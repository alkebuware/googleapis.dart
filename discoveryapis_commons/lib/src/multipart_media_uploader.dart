// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'request_impl.dart';
import 'requests.dart' as client_requests;

const contentTypeJsonUtf8 = 'application/json; charset=utf-8';

/// Does media uploads using the multipart upload protocol.
class MultipartMediaUploader {
  static const _boundary = '314159265358979323846';
  static const _base64Encoder = Base64Encoder();

  final http.Client _httpClient;
  final client_requests.Media _uploadMedia;
  final Uri _uri;
  final String _body;
  final String _method;
  final String _userAgent;

  MultipartMediaUploader(this._httpClient, this._uploadMedia, this._body,
      this._uri, this._method, this._userAgent);

  Future<http.StreamedResponse> upload() {
    final base64MediaStream =
        _uploadMedia.stream.transform(_base64Encoder).transform(ascii.encoder);
    final base64MediaStreamLength = _lengthOfBase64Stream(_uploadMedia.length!);

    // NOTE: We assume that [_body] is encoded JSON without any \r or \n in it.
    // This guarantees us that [_body] cannot contain a valid multipart
    // boundary.
    final bodyHead =
        '${'--$_boundary\r\n'}${'Content-Type: $contentTypeJsonUtf8\r\n\r\n'}'
        '$_body${'\r\n--$_boundary\r\n'}'
        '${'Content-Type: ${_uploadMedia.contentType}\r\n'}'
        'Content-Transfer-Encoding: base64\r\n\r\n';
    const bodyTail = '\r\n--$_boundary--';

    final totalLength =
        bodyHead.length + base64MediaStreamLength + bodyTail.length;

    final bodyController = StreamController<List<int>>()
      ..add(utf8.encode(bodyHead));
    bodyController.addStream(base64MediaStream).then((_) {
      bodyController.add(utf8.encode(bodyTail));
    }).catchError((Object e) {
      bodyController.addError(e);
      return null;
    }).then((_) {
      bodyController.close();
    });

    final headers = {
      'user-agent': _userAgent,
      'content-type': 'multipart/related; boundary=\"$_boundary\"',
      'content-length': '$totalLength'
    };
    final bodyStream = bodyController.stream;
    final request = RequestImpl(_method, _uri, bodyStream);
    request.headers.addAll(headers);
    return _httpClient.send(request);
  }
}

int _lengthOfBase64Stream(int lengthOfByteStream) =>
    ((lengthOfByteStream + 2) ~/ 3) * 4;
