// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Google Workspace Alert Center API - v1beta1
///
/// Manages alerts on issues affecting your domain.
///
/// For more information, see
/// <https://developers.google.com/admin-sdk/alertcenter/>
///
/// Create an instance of [AlertCenterApi] to access these resources:
///
/// - [AlertsResource]
///   - [AlertsFeedbackResource]
/// - [V1beta1Resource]
library alertcenter.v1beta1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Manages alerts on issues affecting your domain.
class AlertCenterApi {
  /// See and delete your domain's G Suite alerts, and send alert feedback
  static const appsAlertsScope = 'https://www.googleapis.com/auth/apps.alerts';

  final commons.ApiRequester _requester;

  AlertsResource get alerts => AlertsResource(_requester);
  V1beta1Resource get v1beta1 => V1beta1Resource(_requester);

  AlertCenterApi(http.Client client,
      {core.String rootUrl = 'https://alertcenter.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AlertsResource {
  final commons.ApiRequester _requester;

  AlertsFeedbackResource get feedback => AlertsFeedbackResource(_requester);

  AlertsResource(commons.ApiRequester client) : _requester = client;

  /// Performs batch delete operation on alerts.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchDeleteAlertsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchDeleteAlertsResponse> batchDelete(
    BatchDeleteAlertsRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1beta1/alerts:batchDelete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return BatchDeleteAlertsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Performs batch undelete operation on alerts.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchUndeleteAlertsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchUndeleteAlertsResponse> batchUndelete(
    BatchUndeleteAlertsRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1beta1/alerts:batchUndelete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return BatchUndeleteAlertsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Marks the specified alert for deletion.
  ///
  /// An alert that has been marked for deletion is removed from Alert Center
  /// after 30 days. Marking an alert for deletion has no effect on an alert
  /// which has already been marked for deletion. Attempting to mark a
  /// nonexistent alert for deletion results in a `NOT_FOUND` error.
  ///
  /// Request parameters:
  ///
  /// [alertId] - Required. The identifier of the alert to delete.
  ///
  /// [customerId] - Optional. The unique identifier of the Google Workspace
  /// organization account of the customer the alert is associated with.
  /// Inferred from the caller identity if not provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String alertId, {
    core.String? customerId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (customerId != null) 'customerId': [customerId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/alerts/' + commons.escapeVariable('$alertId');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified alert.
  ///
  /// Attempting to get a nonexistent alert returns `NOT_FOUND` error.
  ///
  /// Request parameters:
  ///
  /// [alertId] - Required. The identifier of the alert to retrieve.
  ///
  /// [customerId] - Optional. The unique identifier of the Google Workspace
  /// organization account of the customer the alert is associated with.
  /// Inferred from the caller identity if not provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Alert].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Alert> get(
    core.String alertId, {
    core.String? customerId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (customerId != null) 'customerId': [customerId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/alerts/' + commons.escapeVariable('$alertId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Alert.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the metadata of an alert.
  ///
  /// Attempting to get metadata for a non-existent alert returns `NOT_FOUND`
  /// error.
  ///
  /// Request parameters:
  ///
  /// [alertId] - Required. The identifier of the alert this metadata belongs
  /// to.
  ///
  /// [customerId] - Optional. The unique identifier of the Google Workspace
  /// organization account of the customer the alert metadata is associated
  /// with. Inferred from the caller identity if not provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AlertMetadata].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AlertMetadata> getMetadata(
    core.String alertId, {
    core.String? customerId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (customerId != null) 'customerId': [customerId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/alerts/' + commons.escapeVariable('$alertId') + '/metadata';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AlertMetadata.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the alerts.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Optional. The unique identifier of the Google Workspace
  /// organization account of the customer the alerts are associated with.
  /// Inferred from the caller identity if not provided.
  ///
  /// [filter] - Optional. A query string for filtering alert results. For more
  /// details, see \[Query
  /// filters\](/admin-sdk/alertcenter/guides/query-filters) and \[Supported
  /// query filter
  /// fields\](/admin-sdk/alertcenter/reference/filter-fields#alerts.list).
  ///
  /// [orderBy] - Optional. The sort order of the list results. If not specified
  /// results may be returned in arbitrary order. You can sort the results in
  /// descending order based on the creation timestamp using
  /// `order_by="create_time desc"`. Currently, supported sorting are
  /// `create_time asc`, `create_time desc`, `update_time desc`
  ///
  /// [pageSize] - Optional. The requested page size. Server may return fewer
  /// items than requested. If unspecified, server picks an appropriate default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return. If empty, a new iteration is started. To continue an
  /// iteration, pass in the value from the previous ListAlertsResponse's
  /// next_page_token field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAlertsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAlertsResponse> list({
    core.String? customerId,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (customerId != null) 'customerId': [customerId],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1beta1/alerts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListAlertsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Restores, or "undeletes", an alert that was marked for deletion within the
  /// past 30 days.
  ///
  /// Attempting to undelete an alert which was marked for deletion over 30 days
  /// ago (which has been removed from the Alert Center database) or a
  /// nonexistent alert returns a `NOT_FOUND` error. Attempting to undelete an
  /// alert which has not been marked for deletion has no effect.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [alertId] - Required. The identifier of the alert to undelete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Alert].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Alert> undelete(
    UndeleteAlertRequest request,
    core.String alertId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/alerts/' + commons.escapeVariable('$alertId') + ':undelete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Alert.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class AlertsFeedbackResource {
  final commons.ApiRequester _requester;

  AlertsFeedbackResource(commons.ApiRequester client) : _requester = client;

  /// Creates new feedback for an alert.
  ///
  /// Attempting to create a feedback for a non-existent alert returns
  /// \`NOT_FOUND\` error. Attempting to create a feedback for an alert that is
  /// marked for deletion returns \`FAILED_PRECONDITION' error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [alertId] - Required. The identifier of the alert this feedback belongs
  /// to.
  ///
  /// [customerId] - Optional. The unique identifier of the Google Workspace
  /// organization account of the customer the alert is associated with.
  /// Inferred from the caller identity if not provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AlertFeedback].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AlertFeedback> create(
    AlertFeedback request,
    core.String alertId, {
    core.String? customerId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (customerId != null) 'customerId': [customerId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/alerts/' + commons.escapeVariable('$alertId') + '/feedback';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return AlertFeedback.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the feedback for an alert.
  ///
  /// Attempting to list feedbacks for a non-existent alert returns `NOT_FOUND`
  /// error.
  ///
  /// Request parameters:
  ///
  /// [alertId] - Required. The alert identifier. The "-" wildcard could be used
  /// to represent all alerts.
  ///
  /// [customerId] - Optional. The unique identifier of the Google Workspace
  /// organization account of the customer the alert feedback are associated
  /// with. Inferred from the caller identity if not provided.
  ///
  /// [filter] - Optional. A query string for filtering alert feedback results.
  /// For more details, see \[Query
  /// filters\](/admin-sdk/alertcenter/guides/query-filters) and \[Supported
  /// query filter
  /// fields\](/admin-sdk/alertcenter/reference/filter-fields#alerts.feedback.list).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAlertFeedbackResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAlertFeedbackResponse> list(
    core.String alertId, {
    core.String? customerId,
    core.String? filter,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (customerId != null) 'customerId': [customerId],
      if (filter != null) 'filter': [filter],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/alerts/' + commons.escapeVariable('$alertId') + '/feedback';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListAlertFeedbackResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class V1beta1Resource {
  final commons.ApiRequester _requester;

  V1beta1Resource(commons.ApiRequester client) : _requester = client;

  /// Returns customer-level settings.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Optional. The unique identifier of the Google Workspace
  /// organization account of the customer the alert settings are associated
  /// with. Inferred from the caller identity if not provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Settings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Settings> getSettings({
    core.String? customerId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (customerId != null) 'customerId': [customerId],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1beta1/settings';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Settings.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the customer-level settings.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Optional. The unique identifier of the Google Workspace
  /// organization account of the customer the alert settings are associated
  /// with. Inferred from the caller identity if not provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Settings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Settings> updateSettings(
    Settings request, {
    core.String? customerId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (customerId != null) 'customerId': [customerId],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1beta1/settings';

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Settings.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

/// Alerts for user account warning events.
class AccountWarning {
  /// The email of the user that this event belongs to.
  ///
  /// Required.
  core.String? email;

  /// Details of the login action associated with the warning event.
  ///
  /// This is only available for: * Suspicious login * Suspicious login (less
  /// secure app) * Suspicious programmatic login * User suspended (suspicious
  /// activity)
  ///
  /// Optional.
  LoginDetails? loginDetails;

  AccountWarning();

  AccountWarning.fromJson(core.Map _json) {
    if (_json.containsKey('email')) {
      email = _json['email'] as core.String;
    }
    if (_json.containsKey('loginDetails')) {
      loginDetails = LoginDetails.fromJson(
          _json['loginDetails'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (loginDetails != null) 'loginDetails': loginDetails!.toJson(),
      };
}

/// Metadata related to the action.
class ActionInfo {
  ActionInfo();

  ActionInfo.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Alerts from Google Workspace Security Center rules service configured by an
/// admin.
class ActivityRule {
  /// List of action names associated with the rule threshold.
  core.List<core.String>? actionNames;

  /// Rule create timestamp.
  core.String? createTime;

  /// Description of the rule.
  core.String? description;

  /// Alert display name.
  core.String? displayName;

  /// Rule name.
  core.String? name;

  /// Query that is used to get the data from the associated source.
  core.String? query;

  /// List of alert IDs superseded by this alert.
  ///
  /// It is used to indicate that this alert is essentially extension of
  /// superseded alerts and we found the relationship after creating these
  /// alerts.
  core.List<core.String>? supersededAlerts;

  /// Alert ID superseding this alert.
  ///
  /// It is used to indicate that superseding alert is essentially extension of
  /// this alert and we found the relationship after creating both alerts.
  core.String? supersedingAlert;

  /// Alert threshold is for example “COUNT > 5”.
  core.String? threshold;

  /// The trigger sources for this rule.
  ///
  /// * GMAIL_EVENTS * DEVICE_EVENTS * USER_EVENTS
  core.String? triggerSource;

  /// The timestamp of the last update to the rule.
  core.String? updateTime;

  /// Rule window size.
  ///
  /// Possible values are 1 hour or 24 hours.
  core.String? windowSize;

  ActivityRule();

  ActivityRule.fromJson(core.Map _json) {
    if (_json.containsKey('actionNames')) {
      actionNames = (_json['actionNames'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('query')) {
      query = _json['query'] as core.String;
    }
    if (_json.containsKey('supersededAlerts')) {
      supersededAlerts = (_json['supersededAlerts'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('supersedingAlert')) {
      supersedingAlert = _json['supersedingAlert'] as core.String;
    }
    if (_json.containsKey('threshold')) {
      threshold = _json['threshold'] as core.String;
    }
    if (_json.containsKey('triggerSource')) {
      triggerSource = _json['triggerSource'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
    if (_json.containsKey('windowSize')) {
      windowSize = _json['windowSize'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionNames != null) 'actionNames': actionNames!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (query != null) 'query': query!,
        if (supersededAlerts != null) 'supersededAlerts': supersededAlerts!,
        if (supersedingAlert != null) 'supersedingAlert': supersedingAlert!,
        if (threshold != null) 'threshold': threshold!,
        if (triggerSource != null) 'triggerSource': triggerSource!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (windowSize != null) 'windowSize': windowSize!,
      };
}

/// An alert affecting a customer.
class Alert {
  /// The unique identifier for the alert.
  ///
  /// Output only.
  core.String? alertId;

  /// The time this alert was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The unique identifier of the Google account of the customer.
  ///
  /// Output only.
  core.String? customerId;

  /// The data associated with this alert, for example
  /// google.apps.alertcenter.type.DeviceCompromised.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? data;

  /// `True` if this alert is marked for deletion.
  ///
  /// Output only.
  core.bool? deleted;

  /// The time the event that caused this alert ceased being active.
  ///
  /// If provided, the end time must not be earlier than the start time. If not
  /// provided, it indicates an ongoing alert.
  ///
  /// Optional.
  core.String? endTime;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of an alert from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform alert updates in order to avoid race
  /// conditions: An `etag` is returned in the response which contains alerts,
  /// and systems are expected to put that etag in the request to update alert
  /// to ensure that their change will be applied to the same version of the
  /// alert. If no `etag` is provided in the call to update alert, then the
  /// existing alert is overwritten blindly.
  ///
  /// Optional.
  core.String? etag;

  /// The metadata associated with this alert.
  ///
  /// Output only.
  AlertMetadata? metadata;

  /// An optional
  /// [Security Investigation Tool](https://support.google.com/a/answer/7575955)
  /// query for this alert.
  ///
  /// Output only.
  core.String? securityInvestigationToolLink;

  /// A unique identifier for the system that reported the alert.
  ///
  /// This is output only after alert is created. Supported sources are any of
  /// the following: * Google Operations * Mobile device management * Gmail
  /// phishing * Domain wide takeout * State sponsored attack * Google identity
  ///
  /// Required.
  core.String? source;

  /// The time the event that caused this alert was started or detected.
  ///
  /// Required.
  core.String? startTime;

  /// The type of the alert.
  ///
  /// This is output only after alert is created. For a list of available alert
  /// types see \[Google Workspace Alert
  /// types\](/admin-sdk/alertcenter/reference/alert-types).
  ///
  /// Required.
  core.String? type;

  /// The time this alert was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Alert();

  Alert.fromJson(core.Map _json) {
    if (_json.containsKey('alertId')) {
      alertId = _json['alertId'] as core.String;
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('customerId')) {
      customerId = _json['customerId'] as core.String;
    }
    if (_json.containsKey('data')) {
      data = (_json['data'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
    if (_json.containsKey('deleted')) {
      deleted = _json['deleted'] as core.bool;
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('metadata')) {
      metadata = AlertMetadata.fromJson(
          _json['metadata'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('securityInvestigationToolLink')) {
      securityInvestigationToolLink =
          _json['securityInvestigationToolLink'] as core.String;
    }
    if (_json.containsKey('source')) {
      source = _json['source'] as core.String;
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (alertId != null) 'alertId': alertId!,
        if (createTime != null) 'createTime': createTime!,
        if (customerId != null) 'customerId': customerId!,
        if (data != null) 'data': data!,
        if (deleted != null) 'deleted': deleted!,
        if (endTime != null) 'endTime': endTime!,
        if (etag != null) 'etag': etag!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (securityInvestigationToolLink != null)
          'securityInvestigationToolLink': securityInvestigationToolLink!,
        if (source != null) 'source': source!,
        if (startTime != null) 'startTime': startTime!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A customer feedback about an alert.
class AlertFeedback {
  /// The alert identifier.
  ///
  /// Output only.
  core.String? alertId;

  /// The time this feedback was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The unique identifier of the Google account of the customer.
  ///
  /// Output only.
  core.String? customerId;

  /// The email of the user that provided the feedback.
  ///
  /// Output only.
  core.String? email;

  /// The unique identifier for the feedback.
  ///
  /// Output only.
  core.String? feedbackId;

  /// The type of the feedback.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ALERT_FEEDBACK_TYPE_UNSPECIFIED" : The feedback type is not specified.
  /// - "NOT_USEFUL" : The alert report is not useful.
  /// - "SOMEWHAT_USEFUL" : The alert report is somewhat useful.
  /// - "VERY_USEFUL" : The alert report is very useful.
  core.String? type;

  AlertFeedback();

  AlertFeedback.fromJson(core.Map _json) {
    if (_json.containsKey('alertId')) {
      alertId = _json['alertId'] as core.String;
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('customerId')) {
      customerId = _json['customerId'] as core.String;
    }
    if (_json.containsKey('email')) {
      email = _json['email'] as core.String;
    }
    if (_json.containsKey('feedbackId')) {
      feedbackId = _json['feedbackId'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (alertId != null) 'alertId': alertId!,
        if (createTime != null) 'createTime': createTime!,
        if (customerId != null) 'customerId': customerId!,
        if (email != null) 'email': email!,
        if (feedbackId != null) 'feedbackId': feedbackId!,
        if (type != null) 'type': type!,
      };
}

/// An alert metadata.
class AlertMetadata {
  /// The alert identifier.
  ///
  /// Output only.
  core.String? alertId;

  /// The email address of the user assigned to the alert.
  core.String? assignee;

  /// The unique identifier of the Google account of the customer.
  ///
  /// Output only.
  core.String? customerId;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of an alert metadata from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform metatdata updates in order to avoid
  /// race conditions: An `etag` is returned in the response which contains
  /// alert metadata, and systems are expected to put that etag in the request
  /// to update alert metadata to ensure that their change will be applied to
  /// the same version of the alert metadata. If no `etag` is provided in the
  /// call to update alert metadata, then the existing alert metadata is
  /// overwritten blindly.
  ///
  /// Optional.
  core.String? etag;

  /// The severity value of the alert.
  ///
  /// Alert Center will set this field at alert creation time, default's to an
  /// empty string when it could not be determined. The supported values for
  /// update actions on this field are the following: * HIGH * MEDIUM * LOW
  core.String? severity;

  /// The current status of the alert.
  ///
  /// The supported values are the following: * NOT_STARTED * IN_PROGRESS *
  /// CLOSED
  core.String? status;

  /// The time this metadata was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  AlertMetadata();

  AlertMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('alertId')) {
      alertId = _json['alertId'] as core.String;
    }
    if (_json.containsKey('assignee')) {
      assignee = _json['assignee'] as core.String;
    }
    if (_json.containsKey('customerId')) {
      customerId = _json['customerId'] as core.String;
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('severity')) {
      severity = _json['severity'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (alertId != null) 'alertId': alertId!,
        if (assignee != null) 'assignee': assignee!,
        if (customerId != null) 'customerId': customerId!,
        if (etag != null) 'etag': etag!,
        if (severity != null) 'severity': severity!,
        if (status != null) 'status': status!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Alerts from App Maker to notify admins to set up default SQL instance.
class AppMakerSqlSetupNotification {
  /// List of applications with requests for default SQL set up.
  core.List<RequestInfo>? requestInfo;

  AppMakerSqlSetupNotification();

  AppMakerSqlSetupNotification.fromJson(core.Map _json) {
    if (_json.containsKey('requestInfo')) {
      requestInfo = (_json['requestInfo'] as core.List)
          .map<RequestInfo>((value) => RequestInfo.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestInfo != null)
          'requestInfo': requestInfo!.map((value) => value.toJson()).toList(),
      };
}

/// Alerts from AppSettingsChanged bucket Rules configured by Admin which
/// contain the below rules.
///
/// Calendar settings changed Drive settings changed Email settings changed
/// Mobile settings changed
class AppSettingsChanged {
  /// Any other associated alert details, for example, AlertConfiguration.
  core.String? alertDetails;
  core.List<core.int> get alertDetailsAsBytes =>
      convert.base64.decode(alertDetails!);

  set alertDetailsAsBytes(core.List<core.int> _bytes) {
    alertDetails =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Rule name
  core.String? name;

  AppSettingsChanged();

  AppSettingsChanged.fromJson(core.Map _json) {
    if (_json.containsKey('alertDetails')) {
      alertDetails = _json['alertDetails'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (alertDetails != null) 'alertDetails': alertDetails!,
        if (name != null) 'name': name!,
      };
}

/// Attachment with application-specific information about an alert.
class Attachment {
  /// A CSV file attachment.
  Csv? csv;

  Attachment();

  Attachment.fromJson(core.Map _json) {
    if (_json.containsKey('csv')) {
      csv = Csv.fromJson(_json['csv'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (csv != null) 'csv': csv!.toJson(),
      };
}

/// Alert for setting the domain or IP that malicious email comes from as
/// whitelisted domain or IP in Gmail advanced settings.
class BadWhitelist {
  /// The domain ID.
  DomainId? domainId;

  /// The entity whose actions triggered a Gmail phishing alert.
  MaliciousEntity? maliciousEntity;

  /// The list of messages contained by this alert.
  core.List<GmailMessageInfo>? messages;

  /// The source IP address of the malicious email, for example, `127.0.0.1`.
  core.String? sourceIp;

  BadWhitelist();

  BadWhitelist.fromJson(core.Map _json) {
    if (_json.containsKey('domainId')) {
      domainId = DomainId.fromJson(
          _json['domainId'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('maliciousEntity')) {
      maliciousEntity = MaliciousEntity.fromJson(
          _json['maliciousEntity'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('messages')) {
      messages = (_json['messages'] as core.List)
          .map<GmailMessageInfo>((value) => GmailMessageInfo.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('sourceIp')) {
      sourceIp = _json['sourceIp'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (domainId != null) 'domainId': domainId!.toJson(),
        if (maliciousEntity != null)
          'maliciousEntity': maliciousEntity!.toJson(),
        if (messages != null)
          'messages': messages!.map((value) => value.toJson()).toList(),
        if (sourceIp != null) 'sourceIp': sourceIp!,
      };
}

/// A request to perform batch delete on alerts.
class BatchDeleteAlertsRequest {
  /// list of alert IDs.
  ///
  /// Required.
  core.List<core.String>? alertId;

  /// The unique identifier of the Google Workspace organization account of the
  /// customer the alerts are associated with.
  ///
  /// Optional.
  core.String? customerId;

  BatchDeleteAlertsRequest();

  BatchDeleteAlertsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('alertId')) {
      alertId = (_json['alertId'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('customerId')) {
      customerId = _json['customerId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (alertId != null) 'alertId': alertId!,
        if (customerId != null) 'customerId': customerId!,
      };
}

/// Response to batch delete operation on alerts.
class BatchDeleteAlertsResponse {
  /// The status details for each failed alert_id.
  core.Map<core.String, Status>? failedAlertStatus;

  /// The successful list of alert IDs.
  core.List<core.String>? successAlertIds;

  BatchDeleteAlertsResponse();

  BatchDeleteAlertsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('failedAlertStatus')) {
      failedAlertStatus =
          (_json['failedAlertStatus'] as core.Map<core.String, core.dynamic>)
              .map(
        (key, item) => core.MapEntry(
          key,
          Status.fromJson(item as core.Map<core.String, core.dynamic>),
        ),
      );
    }
    if (_json.containsKey('successAlertIds')) {
      successAlertIds = (_json['successAlertIds'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (failedAlertStatus != null)
          'failedAlertStatus': failedAlertStatus!
              .map((key, item) => core.MapEntry(key, item.toJson())),
        if (successAlertIds != null) 'successAlertIds': successAlertIds!,
      };
}

/// A request to perform batch undelete on alerts.
class BatchUndeleteAlertsRequest {
  /// list of alert IDs.
  ///
  /// Required.
  core.List<core.String>? alertId;

  /// The unique identifier of the Google Workspace organization account of the
  /// customer the alerts are associated with.
  ///
  /// Optional.
  core.String? customerId;

  BatchUndeleteAlertsRequest();

  BatchUndeleteAlertsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('alertId')) {
      alertId = (_json['alertId'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('customerId')) {
      customerId = _json['customerId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (alertId != null) 'alertId': alertId!,
        if (customerId != null) 'customerId': customerId!,
      };
}

/// Response to batch undelete operation on alerts.
class BatchUndeleteAlertsResponse {
  /// The status details for each failed alert_id.
  core.Map<core.String, Status>? failedAlertStatus;

  /// The successful list of alert IDs.
  core.List<core.String>? successAlertIds;

  BatchUndeleteAlertsResponse();

  BatchUndeleteAlertsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('failedAlertStatus')) {
      failedAlertStatus =
          (_json['failedAlertStatus'] as core.Map<core.String, core.dynamic>)
              .map(
        (key, item) => core.MapEntry(
          key,
          Status.fromJson(item as core.Map<core.String, core.dynamic>),
        ),
      );
    }
    if (_json.containsKey('successAlertIds')) {
      successAlertIds = (_json['successAlertIds'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (failedAlertStatus != null)
          'failedAlertStatus': failedAlertStatus!
              .map((key, item) => core.MapEntry(key, item.toJson())),
        if (successAlertIds != null) 'successAlertIds': successAlertIds!,
      };
}

/// A reference to a Cloud Pubsub topic.
///
/// To register for notifications, the owner of the topic must grant
/// `alerts-api-push-notifications@system.gserviceaccount.com` the
/// `projects.topics.publish` permission.
class CloudPubsubTopic {
  /// The format of the payload that would be sent.
  ///
  /// If not specified the format will be JSON.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PAYLOAD_FORMAT_UNSPECIFIED" : Payload format is not specified (will use
  /// JSON as default).
  /// - "JSON" : Use JSON.
  core.String? payloadFormat;

  /// The `name` field of a Cloud Pubsub
  /// [Topic](https://cloud.google.com/pubsub/docs/reference/rest/v1/projects.topics#Topic).
  core.String? topicName;

  CloudPubsubTopic();

  CloudPubsubTopic.fromJson(core.Map _json) {
    if (_json.containsKey('payloadFormat')) {
      payloadFormat = _json['payloadFormat'] as core.String;
    }
    if (_json.containsKey('topicName')) {
      topicName = _json['topicName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (payloadFormat != null) 'payloadFormat': payloadFormat!,
        if (topicName != null) 'topicName': topicName!,
      };
}

/// A representation of a CSV file attachment, as a list of column headers and a
/// list of data rows.
class Csv {
  /// The list of data rows in a CSV file, as string arrays rather than as a
  /// single comma-separated string.
  core.List<CsvRow>? dataRows;

  /// The list of headers for data columns in a CSV file.
  core.List<core.String>? headers;

  Csv();

  Csv.fromJson(core.Map _json) {
    if (_json.containsKey('dataRows')) {
      dataRows = (_json['dataRows'] as core.List)
          .map<CsvRow>((value) =>
              CsvRow.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('headers')) {
      headers = (_json['headers'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataRows != null)
          'dataRows': dataRows!.map((value) => value.toJson()).toList(),
        if (headers != null) 'headers': headers!,
      };
}

/// A representation of a single data row in a CSV file.
class CsvRow {
  /// The data entries in a CSV file row, as a string array rather than a single
  /// comma-separated string.
  core.List<core.String>? entries;

  CsvRow();

  CsvRow.fromJson(core.Map _json) {
    if (_json.containsKey('entries')) {
      entries = (_json['entries'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

/// A mobile device compromised alert.
///
/// Derived from audit logs.
class DeviceCompromised {
  /// The email of the user this alert was created for.
  core.String? email;

  /// The list of security events.
  ///
  /// Required.
  core.List<DeviceCompromisedSecurityDetail>? events;

  DeviceCompromised();

  DeviceCompromised.fromJson(core.Map _json) {
    if (_json.containsKey('email')) {
      email = _json['email'] as core.String;
    }
    if (_json.containsKey('events')) {
      events = (_json['events'] as core.List)
          .map<DeviceCompromisedSecurityDetail>((value) =>
              DeviceCompromisedSecurityDetail.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (events != null)
          'events': events!.map((value) => value.toJson()).toList(),
      };
}

/// Detailed information of a single MDM device compromised event.
class DeviceCompromisedSecurityDetail {
  /// The device compromised state.
  ///
  /// Possible values are "`Compromised`" or "`Not Compromised`".
  core.String? deviceCompromisedState;

  /// The device ID.
  ///
  /// Required.
  core.String? deviceId;

  /// The model of the device.
  core.String? deviceModel;

  /// The type of the device.
  core.String? deviceType;

  /// Required for iOS, empty for others.
  core.String? iosVendorId;

  /// The device resource ID.
  core.String? resourceId;

  /// The serial number of the device.
  core.String? serialNumber;

  DeviceCompromisedSecurityDetail();

  DeviceCompromisedSecurityDetail.fromJson(core.Map _json) {
    if (_json.containsKey('deviceCompromisedState')) {
      deviceCompromisedState = _json['deviceCompromisedState'] as core.String;
    }
    if (_json.containsKey('deviceId')) {
      deviceId = _json['deviceId'] as core.String;
    }
    if (_json.containsKey('deviceModel')) {
      deviceModel = _json['deviceModel'] as core.String;
    }
    if (_json.containsKey('deviceType')) {
      deviceType = _json['deviceType'] as core.String;
    }
    if (_json.containsKey('iosVendorId')) {
      iosVendorId = _json['iosVendorId'] as core.String;
    }
    if (_json.containsKey('resourceId')) {
      resourceId = _json['resourceId'] as core.String;
    }
    if (_json.containsKey('serialNumber')) {
      serialNumber = _json['serialNumber'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceCompromisedState != null)
          'deviceCompromisedState': deviceCompromisedState!,
        if (deviceId != null) 'deviceId': deviceId!,
        if (deviceModel != null) 'deviceModel': deviceModel!,
        if (deviceType != null) 'deviceType': deviceType!,
        if (iosVendorId != null) 'iosVendorId': iosVendorId!,
        if (resourceId != null) 'resourceId': resourceId!,
        if (serialNumber != null) 'serialNumber': serialNumber!,
      };
}

/// Alerts that get triggered on violations of Data Loss Prevention (DLP) rules.
class DlpRuleViolation {
  /// Details about the violated DLP rule.
  ///
  /// Admins can use the predefined detectors provided by Google Cloud DLP
  /// https://cloud.google.com/dlp/ when setting up a DLP rule. Matched Cloud
  /// DLP detectors in this violation if any will be captured in the
  /// MatchInfo.predefined_detector.
  RuleViolationInfo? ruleViolationInfo;

  DlpRuleViolation();

  DlpRuleViolation.fromJson(core.Map _json) {
    if (_json.containsKey('ruleViolationInfo')) {
      ruleViolationInfo = RuleViolationInfo.fromJson(
          _json['ruleViolationInfo'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (ruleViolationInfo != null)
          'ruleViolationInfo': ruleViolationInfo!.toJson(),
      };
}

/// Domain ID of Gmail phishing alerts.
class DomainId {
  /// The primary domain for the customer.
  core.String? customerPrimaryDomain;

  DomainId();

  DomainId.fromJson(core.Map _json) {
    if (_json.containsKey('customerPrimaryDomain')) {
      customerPrimaryDomain = _json['customerPrimaryDomain'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (customerPrimaryDomain != null)
          'customerPrimaryDomain': customerPrimaryDomain!,
      };
}

/// A takeout operation for the entire domain was initiated by an admin.
///
/// Derived from audit logs.
class DomainWideTakeoutInitiated {
  /// The email of the admin who initiated the takeout.
  core.String? email;

  /// The takeout request ID.
  core.String? takeoutRequestId;

  DomainWideTakeoutInitiated();

  DomainWideTakeoutInitiated.fromJson(core.Map _json) {
    if (_json.containsKey('email')) {
      email = _json['email'] as core.String;
    }
    if (_json.containsKey('takeoutRequestId')) {
      takeoutRequestId = _json['takeoutRequestId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (takeoutRequestId != null) 'takeoutRequestId': takeoutRequestId!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
class Empty {
  Empty();

  Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Details of a message in phishing spike alert.
class GmailMessageInfo {
  /// The `SHA256` hash of email's attachment and all MIME parts.
  core.List<core.String>? attachmentsSha256Hash;

  /// The date the malicious email was sent.
  core.String? date;

  /// The hash of the message body text.
  core.String? md5HashMessageBody;

  /// The MD5 Hash of email's subject (only available for reported emails).
  core.String? md5HashSubject;

  /// The snippet of the message body text (only available for reported emails).
  core.String? messageBodySnippet;

  /// The message ID.
  core.String? messageId;

  /// The recipient of this email.
  core.String? recipient;

  /// The email subject text (only available for reported emails).
  core.String? subjectText;

  GmailMessageInfo();

  GmailMessageInfo.fromJson(core.Map _json) {
    if (_json.containsKey('attachmentsSha256Hash')) {
      attachmentsSha256Hash = (_json['attachmentsSha256Hash'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('date')) {
      date = _json['date'] as core.String;
    }
    if (_json.containsKey('md5HashMessageBody')) {
      md5HashMessageBody = _json['md5HashMessageBody'] as core.String;
    }
    if (_json.containsKey('md5HashSubject')) {
      md5HashSubject = _json['md5HashSubject'] as core.String;
    }
    if (_json.containsKey('messageBodySnippet')) {
      messageBodySnippet = _json['messageBodySnippet'] as core.String;
    }
    if (_json.containsKey('messageId')) {
      messageId = _json['messageId'] as core.String;
    }
    if (_json.containsKey('recipient')) {
      recipient = _json['recipient'] as core.String;
    }
    if (_json.containsKey('subjectText')) {
      subjectText = _json['subjectText'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (attachmentsSha256Hash != null)
          'attachmentsSha256Hash': attachmentsSha256Hash!,
        if (date != null) 'date': date!,
        if (md5HashMessageBody != null)
          'md5HashMessageBody': md5HashMessageBody!,
        if (md5HashSubject != null) 'md5HashSubject': md5HashSubject!,
        if (messageBodySnippet != null)
          'messageBodySnippet': messageBodySnippet!,
        if (messageId != null) 'messageId': messageId!,
        if (recipient != null) 'recipient': recipient!,
        if (subjectText != null) 'subjectText': subjectText!,
      };
}

/// An incident reported by Google Operations for a Google Workspace
/// application.
class GoogleOperations {
  /// The list of emails which correspond to the users directly affected by the
  /// incident.
  core.List<core.String>? affectedUserEmails;

  /// Application-specific data for an incident, provided when the Google
  /// Workspace application which reported the incident cannot be completely
  /// restored to a valid state.
  ///
  /// Optional.
  Attachment? attachmentData;

  /// A detailed, freeform incident description.
  core.String? description;

  /// A header to display above the incident message.
  ///
  /// Typically used to attach a localized notice on the timeline for followup
  /// comms translations.
  core.String? header;

  /// A one-line incident description.
  core.String? title;

  GoogleOperations();

  GoogleOperations.fromJson(core.Map _json) {
    if (_json.containsKey('affectedUserEmails')) {
      affectedUserEmails = (_json['affectedUserEmails'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('attachmentData')) {
      attachmentData = Attachment.fromJson(
          _json['attachmentData'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('header')) {
      header = _json['header'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (affectedUserEmails != null)
          'affectedUserEmails': affectedUserEmails!,
        if (attachmentData != null) 'attachmentData': attachmentData!.toJson(),
        if (description != null) 'description': description!,
        if (header != null) 'header': header!,
        if (title != null) 'title': title!,
      };
}

/// Response message for an alert feedback listing request.
class ListAlertFeedbackResponse {
  /// The list of alert feedback.
  ///
  /// Feedback entries for each alert are ordered by creation time descending.
  core.List<AlertFeedback>? feedback;

  ListAlertFeedbackResponse();

  ListAlertFeedbackResponse.fromJson(core.Map _json) {
    if (_json.containsKey('feedback')) {
      feedback = (_json['feedback'] as core.List)
          .map<AlertFeedback>((value) => AlertFeedback.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (feedback != null)
          'feedback': feedback!.map((value) => value.toJson()).toList(),
      };
}

/// Response message for an alert listing request.
class ListAlertsResponse {
  /// The list of alerts.
  core.List<Alert>? alerts;

  /// The token for the next page.
  ///
  /// If not empty, indicates that there may be more alerts that match the
  /// listing request; this value can be used in a subsequent ListAlertsRequest
  /// to get alerts continuing from last result of the current list call.
  core.String? nextPageToken;

  ListAlertsResponse();

  ListAlertsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('alerts')) {
      alerts = (_json['alerts'] as core.List)
          .map<Alert>((value) =>
              Alert.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (alerts != null)
          'alerts': alerts!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The details of the login action.
class LoginDetails {
  /// The human-readable IP address (for example, `11.22.33.44`) that is
  /// associated with the warning event.
  ///
  /// Optional.
  core.String? ipAddress;

  /// The successful login time that is associated with the warning event.
  ///
  /// This isn't present for blocked login attempts.
  ///
  /// Optional.
  core.String? loginTime;

  LoginDetails();

  LoginDetails.fromJson(core.Map _json) {
    if (_json.containsKey('ipAddress')) {
      ipAddress = _json['ipAddress'] as core.String;
    }
    if (_json.containsKey('loginTime')) {
      loginTime = _json['loginTime'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (ipAddress != null) 'ipAddress': ipAddress!,
        if (loginTime != null) 'loginTime': loginTime!,
      };
}

/// Proto for all phishing alerts with common payload.
///
/// Supported types are any of the following: * User reported phishing * User
/// reported spam spike * Suspicious message reported * Phishing
/// reclassification * Malware reclassification * Gmail potential employee
/// spoofing
class MailPhishing {
  /// The domain ID.
  DomainId? domainId;

  /// If `true`, the email originated from within the organization.
  core.bool? isInternal;

  /// The entity whose actions triggered a Gmail phishing alert.
  MaliciousEntity? maliciousEntity;

  /// The list of messages contained by this alert.
  core.List<GmailMessageInfo>? messages;

  /// System actions on the messages.
  /// Possible string values are:
  /// - "SYSTEM_ACTION_TYPE_UNSPECIFIED" : System action is unspecified.
  /// - "NO_OPERATION" : No operation.
  /// - "REMOVED_FROM_INBOX" : Messages were removed from the inbox.
  core.String? systemActionType;

  MailPhishing();

  MailPhishing.fromJson(core.Map _json) {
    if (_json.containsKey('domainId')) {
      domainId = DomainId.fromJson(
          _json['domainId'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('isInternal')) {
      isInternal = _json['isInternal'] as core.bool;
    }
    if (_json.containsKey('maliciousEntity')) {
      maliciousEntity = MaliciousEntity.fromJson(
          _json['maliciousEntity'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('messages')) {
      messages = (_json['messages'] as core.List)
          .map<GmailMessageInfo>((value) => GmailMessageInfo.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('systemActionType')) {
      systemActionType = _json['systemActionType'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (domainId != null) 'domainId': domainId!.toJson(),
        if (isInternal != null) 'isInternal': isInternal!,
        if (maliciousEntity != null)
          'maliciousEntity': maliciousEntity!.toJson(),
        if (messages != null)
          'messages': messages!.map((value) => value.toJson()).toList(),
        if (systemActionType != null) 'systemActionType': systemActionType!,
      };
}

/// Entity whose actions triggered a Gmail phishing alert.
class MaliciousEntity {
  /// The header from display name.
  core.String? displayName;

  /// The actor who triggered a gmail phishing alert.
  User? entity;

  /// The sender email address.
  core.String? fromHeader;

  MaliciousEntity();

  MaliciousEntity.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('entity')) {
      entity =
          User.fromJson(_json['entity'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('fromHeader')) {
      fromHeader = _json['fromHeader'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (entity != null) 'entity': entity!.toJson(),
        if (fromHeader != null) 'fromHeader': fromHeader!,
      };
}

/// Proto that contains match information from the condition part of the rule.
class MatchInfo {
  /// For matched detector predefined by Google.
  PredefinedDetectorInfo? predefinedDetector;

  /// For matched detector defined by administrators.
  UserDefinedDetectorInfo? userDefinedDetector;

  MatchInfo();

  MatchInfo.fromJson(core.Map _json) {
    if (_json.containsKey('predefinedDetector')) {
      predefinedDetector = PredefinedDetectorInfo.fromJson(
          _json['predefinedDetector'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('userDefinedDetector')) {
      userDefinedDetector = UserDefinedDetectorInfo.fromJson(
          _json['userDefinedDetector'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (predefinedDetector != null)
          'predefinedDetector': predefinedDetector!.toJson(),
        if (userDefinedDetector != null)
          'userDefinedDetector': userDefinedDetector!.toJson(),
      };
}

/// Settings for callback notifications.
///
/// For more details see \[Google Workspace Alert
/// Notification\](/admin-sdk/alertcenter/guides/notifications).
class Notification {
  /// A Google Cloud Pub/sub topic destination.
  CloudPubsubTopic? cloudPubsubTopic;

  Notification();

  Notification.fromJson(core.Map _json) {
    if (_json.containsKey('cloudPubsubTopic')) {
      cloudPubsubTopic = CloudPubsubTopic.fromJson(
          _json['cloudPubsubTopic'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudPubsubTopic != null)
          'cloudPubsubTopic': cloudPubsubTopic!.toJson(),
      };
}

/// Alert for a spike in user reported phishing.
///
/// *Warning*: This type has been deprecated. Use
/// \[MailPhishing\](/admin-sdk/alertcenter/reference/rest/v1beta1/MailPhishing)
/// instead.
class PhishingSpike {
  /// The domain ID.
  DomainId? domainId;

  /// If `true`, the email originated from within the organization.
  core.bool? isInternal;

  /// The entity whose actions triggered a Gmail phishing alert.
  MaliciousEntity? maliciousEntity;

  /// The list of messages contained by this alert.
  core.List<GmailMessageInfo>? messages;

  PhishingSpike();

  PhishingSpike.fromJson(core.Map _json) {
    if (_json.containsKey('domainId')) {
      domainId = DomainId.fromJson(
          _json['domainId'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('isInternal')) {
      isInternal = _json['isInternal'] as core.bool;
    }
    if (_json.containsKey('maliciousEntity')) {
      maliciousEntity = MaliciousEntity.fromJson(
          _json['maliciousEntity'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('messages')) {
      messages = (_json['messages'] as core.List)
          .map<GmailMessageInfo>((value) => GmailMessageInfo.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (domainId != null) 'domainId': domainId!.toJson(),
        if (isInternal != null) 'isInternal': isInternal!,
        if (maliciousEntity != null)
          'maliciousEntity': maliciousEntity!.toJson(),
        if (messages != null)
          'messages': messages!.map((value) => value.toJson()).toList(),
      };
}

/// Detector provided by Google.
class PredefinedDetectorInfo {
  /// Name that uniquely identifies the detector.
  core.String? detectorName;

  PredefinedDetectorInfo();

  PredefinedDetectorInfo.fromJson(core.Map _json) {
    if (_json.containsKey('detectorName')) {
      detectorName = _json['detectorName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectorName != null) 'detectorName': detectorName!,
      };
}

/// Alerts from Reporting Rules configured by Admin.
class ReportingRule {
  /// Any other associated alert details, for example, AlertConfiguration.
  core.String? alertDetails;
  core.List<core.int> get alertDetailsAsBytes =>
      convert.base64.decode(alertDetails!);

  set alertDetailsAsBytes(core.List<core.int> _bytes) {
    alertDetails =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Rule name
  core.String? name;

  /// Alert Rule query Sample Query query { condition { filter {
  /// expected_application_id: 777491262838 expected_event_name:
  /// "indexable_content_change" filter_op: IN } } conjunction_operator: OR }
  core.String? query;
  core.List<core.int> get queryAsBytes => convert.base64.decode(query!);

  set queryAsBytes(core.List<core.int> _bytes) {
    query =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  ReportingRule();

  ReportingRule.fromJson(core.Map _json) {
    if (_json.containsKey('alertDetails')) {
      alertDetails = _json['alertDetails'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('query')) {
      query = _json['query'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (alertDetails != null) 'alertDetails': alertDetails!,
        if (name != null) 'name': name!,
        if (query != null) 'query': query!,
      };
}

/// Requests for one application that needs default SQL setup.
class RequestInfo {
  /// List of app developers who triggered notifications for above application.
  core.List<core.String>? appDeveloperEmail;

  /// The application that requires the SQL setup.
  ///
  /// Required.
  core.String? appKey;

  /// Number of requests sent for this application to set up default SQL
  /// instance.
  ///
  /// Required.
  core.String? numberOfRequests;

  RequestInfo();

  RequestInfo.fromJson(core.Map _json) {
    if (_json.containsKey('appDeveloperEmail')) {
      appDeveloperEmail = (_json['appDeveloperEmail'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('appKey')) {
      appKey = _json['appKey'] as core.String;
    }
    if (_json.containsKey('numberOfRequests')) {
      numberOfRequests = _json['numberOfRequests'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (appDeveloperEmail != null) 'appDeveloperEmail': appDeveloperEmail!,
        if (appKey != null) 'appKey': appKey!,
        if (numberOfRequests != null) 'numberOfRequests': numberOfRequests!,
      };
}

/// Proto that contains resource information.
class ResourceInfo {
  /// Drive file ID.
  core.String? documentId;

  /// Title of the resource, for example email subject, or document title.
  core.String? resourceTitle;

  ResourceInfo();

  ResourceInfo.fromJson(core.Map _json) {
    if (_json.containsKey('documentId')) {
      documentId = _json['documentId'] as core.String;
    }
    if (_json.containsKey('resourceTitle')) {
      resourceTitle = _json['resourceTitle'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentId != null) 'documentId': documentId!,
        if (resourceTitle != null) 'resourceTitle': resourceTitle!,
      };
}

/// Proto that contains rule information.
class RuleInfo {
  /// User provided name of the rule.
  core.String? displayName;

  /// Resource name that uniquely identifies the rule.
  core.String? resourceName;

  RuleInfo();

  RuleInfo.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('resourceName')) {
      resourceName = _json['resourceName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (resourceName != null) 'resourceName': resourceName!,
      };
}

/// Common alert information about violated rules that are configured by Google
/// Workspace administrators.
class RuleViolationInfo {
  /// Source of the data.
  /// Possible string values are:
  /// - "DATA_SOURCE_UNSPECIFIED" : Data source is unspecified.
  /// - "DRIVE" : Drive data source.
  core.String? dataSource;

  /// List of matches that were found in the resource content.
  core.List<MatchInfo>? matchInfo;

  /// Resource recipients.
  ///
  /// For Drive, they are grantees that the Drive file was shared with at the
  /// time of rule triggering. Valid values include user emails, group emails,
  /// domains, or 'anyone' if the file was publicly accessible. If the file was
  /// private the recipients list will be empty. For Gmail, they are emails of
  /// the users or groups that the Gmail message was sent to.
  core.List<core.String>? recipients;

  /// Details of the resource which violated the rule.
  ResourceInfo? resourceInfo;

  /// Details of the violated rule.
  RuleInfo? ruleInfo;

  /// Actions suppressed due to other actions with higher priority.
  core.List<core.String>? suppressedActionTypes;

  /// Trigger of the rule.
  /// Possible string values are:
  /// - "TRIGGER_UNSPECIFIED" : Trigger is unspecified.
  /// - "DRIVE_SHARE" : A Drive file is shared.
  core.String? trigger;

  /// Metadata related to the triggered actions.
  core.List<ActionInfo>? triggeredActionInfo;

  /// Actions applied as a consequence of the rule being triggered.
  core.List<core.String>? triggeredActionTypes;

  /// Email of the user who caused the violation.
  ///
  /// Value could be empty if not applicable, for example, a violation found by
  /// drive continuous scan.
  core.String? triggeringUserEmail;

  RuleViolationInfo();

  RuleViolationInfo.fromJson(core.Map _json) {
    if (_json.containsKey('dataSource')) {
      dataSource = _json['dataSource'] as core.String;
    }
    if (_json.containsKey('matchInfo')) {
      matchInfo = (_json['matchInfo'] as core.List)
          .map<MatchInfo>((value) =>
              MatchInfo.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('recipients')) {
      recipients = (_json['recipients'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('resourceInfo')) {
      resourceInfo = ResourceInfo.fromJson(
          _json['resourceInfo'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('ruleInfo')) {
      ruleInfo = RuleInfo.fromJson(
          _json['ruleInfo'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('suppressedActionTypes')) {
      suppressedActionTypes = (_json['suppressedActionTypes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('trigger')) {
      trigger = _json['trigger'] as core.String;
    }
    if (_json.containsKey('triggeredActionInfo')) {
      triggeredActionInfo = (_json['triggeredActionInfo'] as core.List)
          .map<ActionInfo>((value) =>
              ActionInfo.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('triggeredActionTypes')) {
      triggeredActionTypes = (_json['triggeredActionTypes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('triggeringUserEmail')) {
      triggeringUserEmail = _json['triggeringUserEmail'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSource != null) 'dataSource': dataSource!,
        if (matchInfo != null)
          'matchInfo': matchInfo!.map((value) => value.toJson()).toList(),
        if (recipients != null) 'recipients': recipients!,
        if (resourceInfo != null) 'resourceInfo': resourceInfo!.toJson(),
        if (ruleInfo != null) 'ruleInfo': ruleInfo!.toJson(),
        if (suppressedActionTypes != null)
          'suppressedActionTypes': suppressedActionTypes!,
        if (trigger != null) 'trigger': trigger!,
        if (triggeredActionInfo != null)
          'triggeredActionInfo':
              triggeredActionInfo!.map((value) => value.toJson()).toList(),
        if (triggeredActionTypes != null)
          'triggeredActionTypes': triggeredActionTypes!,
        if (triggeringUserEmail != null)
          'triggeringUserEmail': triggeringUserEmail!,
      };
}

/// Customer-level settings.
class Settings {
  /// The list of notifications.
  core.List<Notification>? notifications;

  Settings();

  Settings.fromJson(core.Map _json) {
    if (_json.containsKey('notifications')) {
      notifications = (_json['notifications'] as core.List)
          .map<Notification>((value) => Notification.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (notifications != null)
          'notifications':
              notifications!.map((value) => value.toJson()).toList(),
      };
}

/// A state-sponsored attack alert.
///
/// Derived from audit logs.
class StateSponsoredAttack {
  /// The email of the user this incident was created for.
  core.String? email;

  StateSponsoredAttack();

  StateSponsoredAttack.fromJson(core.Map _json) {
    if (_json.containsKey('email')) {
      email = _json['email'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int? code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>>? details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String? message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.int;
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map<core.String, core.dynamic>).map(
                    (key, item) => core.MapEntry(
                      key,
                      item as core.Object,
                    ),
                  ))
          .toList();
    }
    if (_json.containsKey('message')) {
      message = _json['message'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (details != null) 'details': details!,
        if (message != null) 'message': message!,
      };
}

/// A mobile suspicious activity alert.
///
/// Derived from audit logs.
class SuspiciousActivity {
  /// The email of the user this alert was created for.
  core.String? email;

  /// The list of security events.
  ///
  /// Required.
  core.List<SuspiciousActivitySecurityDetail>? events;

  SuspiciousActivity();

  SuspiciousActivity.fromJson(core.Map _json) {
    if (_json.containsKey('email')) {
      email = _json['email'] as core.String;
    }
    if (_json.containsKey('events')) {
      events = (_json['events'] as core.List)
          .map<SuspiciousActivitySecurityDetail>((value) =>
              SuspiciousActivitySecurityDetail.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (events != null)
          'events': events!.map((value) => value.toJson()).toList(),
      };
}

/// Detailed information of a single MDM suspicious activity event.
class SuspiciousActivitySecurityDetail {
  /// The device ID.
  ///
  /// Required.
  core.String? deviceId;

  /// The model of the device.
  core.String? deviceModel;

  /// The device property which was changed.
  core.String? deviceProperty;

  /// The type of the device.
  core.String? deviceType;

  /// Required for iOS, empty for others.
  core.String? iosVendorId;

  /// The new value of the device property after the change.
  core.String? newValue;

  /// The old value of the device property before the change.
  core.String? oldValue;

  /// The device resource ID.
  core.String? resourceId;

  /// The serial number of the device.
  core.String? serialNumber;

  SuspiciousActivitySecurityDetail();

  SuspiciousActivitySecurityDetail.fromJson(core.Map _json) {
    if (_json.containsKey('deviceId')) {
      deviceId = _json['deviceId'] as core.String;
    }
    if (_json.containsKey('deviceModel')) {
      deviceModel = _json['deviceModel'] as core.String;
    }
    if (_json.containsKey('deviceProperty')) {
      deviceProperty = _json['deviceProperty'] as core.String;
    }
    if (_json.containsKey('deviceType')) {
      deviceType = _json['deviceType'] as core.String;
    }
    if (_json.containsKey('iosVendorId')) {
      iosVendorId = _json['iosVendorId'] as core.String;
    }
    if (_json.containsKey('newValue')) {
      newValue = _json['newValue'] as core.String;
    }
    if (_json.containsKey('oldValue')) {
      oldValue = _json['oldValue'] as core.String;
    }
    if (_json.containsKey('resourceId')) {
      resourceId = _json['resourceId'] as core.String;
    }
    if (_json.containsKey('serialNumber')) {
      serialNumber = _json['serialNumber'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceId != null) 'deviceId': deviceId!,
        if (deviceModel != null) 'deviceModel': deviceModel!,
        if (deviceProperty != null) 'deviceProperty': deviceProperty!,
        if (deviceType != null) 'deviceType': deviceType!,
        if (iosVendorId != null) 'iosVendorId': iosVendorId!,
        if (newValue != null) 'newValue': newValue!,
        if (oldValue != null) 'oldValue': oldValue!,
        if (resourceId != null) 'resourceId': resourceId!,
        if (serialNumber != null) 'serialNumber': serialNumber!,
      };
}

/// A request to undelete a specific alert that was marked for deletion.
class UndeleteAlertRequest {
  /// The unique identifier of the Google Workspace organization account of the
  /// customer the alert is associated with.
  ///
  /// Inferred from the caller identity if not provided.
  ///
  /// Optional.
  core.String? customerId;

  UndeleteAlertRequest();

  UndeleteAlertRequest.fromJson(core.Map _json) {
    if (_json.containsKey('customerId')) {
      customerId = _json['customerId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (customerId != null) 'customerId': customerId!,
      };
}

/// A user.
class User {
  /// Display name of the user.
  core.String? displayName;

  /// Email address of the user.
  core.String? emailAddress;

  User();

  User.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('emailAddress')) {
      emailAddress = _json['emailAddress'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (emailAddress != null) 'emailAddress': emailAddress!,
      };
}

/// Alerts from UserChanges bucket Rules for predefined rules which contain the
/// below rules.
///
/// Suspended user made active New user Added User suspended (by admin) User
/// granted admin privileges User admin privileges revoked User deleted Users
/// password changed
class UserChanges {
  /// Rule name
  core.String? name;

  UserChanges();

  UserChanges.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// Detector defined by administrators.
class UserDefinedDetectorInfo {
  /// Display name of the detector.
  core.String? displayName;

  /// Resource name that uniquely identifies the detector.
  core.String? resourceName;

  UserDefinedDetectorInfo();

  UserDefinedDetectorInfo.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('resourceName')) {
      resourceName = _json['resourceName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (resourceName != null) 'resourceName': resourceName!,
      };
}
