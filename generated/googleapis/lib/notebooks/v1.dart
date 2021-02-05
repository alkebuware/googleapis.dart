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
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

/// Notebooks API - v1
///
/// AI Platform Notebooks API is used to manage notebook resources in Google
/// Cloud.
///
/// For more information, see
/// <https://cloud.google.com/ai-platform/notebooks/docs/>
///
/// Create an instance of [AIPlatformNotebooksApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsEnvironmentsResource]
///     - [ProjectsLocationsExecutionsResource]
///     - [ProjectsLocationsInstancesResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsSchedulesResource]
library notebooks.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// AI Platform Notebooks API is used to manage notebook resources in Google
/// Cloud.
class AIPlatformNotebooksApi {
  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  AIPlatformNotebooksApi(http.Client client,
      {core.String rootUrl = 'https://notebooks.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEnvironmentsResource get environments =>
      ProjectsLocationsEnvironmentsResource(_requester);
  ProjectsLocationsExecutionsResource get executions =>
      ProjectsLocationsExecutionsResource(_requester);
  ProjectsLocationsInstancesResource get instances =>
      ProjectsLocationsInstancesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsSchedulesResource get schedules =>
      ProjectsLocationsSchedulesResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Location].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Location> get(
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Location.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLocationsResponse> list(
    core.String name, {
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    core.String _url;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/locations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListLocationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsEnvironmentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEnvironmentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Environment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format: `projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [environmentId] - Required. User-defined unique ID of this environment.
  /// The `environment_id` must be 1 to 63 characters long and contain only
  /// lowercase letters, numeric characters, and dashes. The first character
  /// must be a lowercase letter and the last character cannot be a dash.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    Environment request,
    core.String parent, {
    core.String environmentId,
    core.String $fields,
  }) async {
    core.String _url;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (environmentId != null) {
      _queryParams['environmentId'] = [environmentId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/environments';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Environment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/environments/{environment_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single Environment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/environments/{environment_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Environment> get(
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Environment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists environments in a project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format: `projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum return size of the list call.
  ///
  /// [pageToken] - A previous returned page token that can be used to continue
  /// listing from the last result.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEnvironmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEnvironmentsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    core.String _url;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/environments';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListEnvironmentsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsExecutionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsExecutionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Scheduled Notebook in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// `parent=projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [executionId] - Required. User-defined unique ID of this execution.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    Execution request,
    core.String parent, {
    core.String executionId,
    core.String $fields,
  }) async {
    core.String _url;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (executionId != null) {
      _queryParams['executionId'] = [executionId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/executions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes execution
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/executions/{execution_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of executions
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/schedules/{execution_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Execution].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Execution> get(
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Execution.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists executions in a given project and location
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// `parent=projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter applied to resulting executions.
  ///
  /// [orderBy] - Sort by field.
  ///
  /// [pageSize] - Maximum return size of the list call.
  ///
  /// [pageToken] - A previous returned page token that can be used to continue
  /// listing from the last result.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListExecutionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListExecutionsResponse> list(
    core.String parent, {
    core.String filter,
    core.String orderBy,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    core.String _url;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (orderBy != null) {
      _queryParams['orderBy'] = [orderBy];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/executions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListExecutionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Instance in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// `parent=projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [instanceId] - Required. User-defined unique ID of this instance.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    Instance request,
    core.String parent, {
    core.String instanceId,
    core.String $fields,
  }) async {
    core.String _url;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (instanceId != null) {
      _queryParams['instanceId'] = [instanceId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/instances';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single Instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Instance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Instance> get(
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Instance.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned. Valid values are 0, 1, and 3. Requests specifying an invalid
  /// value will be rejected. Requests for policies with any conditional
  /// bindings must specify version 3. Policies without any conditional bindings
  /// may specify any valid value or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    core.String resource, {
    core.int options_requestedPolicyVersion,
    core.String $fields,
  }) async {
    core.String _url;

    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (options_requestedPolicyVersion != null) {
      _queryParams['options.requestedPolicyVersion'] = [
        '${options_requestedPolicyVersion}'
      ];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Check if a notebook instance is healthy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetInstanceHealthResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetInstanceHealthResponse> getInstanceHealth(
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':getInstanceHealth';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GetInstanceHealthResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Check if a notebook instance is upgradable.
  ///
  /// Request parameters:
  ///
  /// [notebookInstance] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IsInstanceUpgradeableResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IsInstanceUpgradeableResponse> isUpgradeable(
    core.String notebookInstance, {
    core.String $fields,
  }) async {
    core.String _url;

    if (notebookInstance == null) {
      throw core.ArgumentError('Parameter notebookInstance is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$notebookInstance') +
        ':isUpgradeable';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return IsInstanceUpgradeableResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists instances in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// `parent=projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum return size of the list call.
  ///
  /// [pageToken] - A previous returned page token that can be used to continue
  /// listing from the last result.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInstancesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInstancesResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    core.String _url;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/instances';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListInstancesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Registers an existing legacy notebook instance to the Notebooks API
  /// server.
  ///
  /// Legacy instances are instances created with the legacy Compute Engine
  /// calls. They are not manageable by the Notebooks API out of the box. This
  /// call makes these instances manageable by the Notebooks API.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// `parent=projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> register(
    RegisterInstanceRequest request,
    core.String parent, {
    core.String $fields,
  }) async {
    core.String _url;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/instances:register';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Allows notebook instances to report their latest instance information to
  /// the Notebooks API server.
  ///
  /// The server will merge the reported information to the instance metadata
  /// store. Do not use this method directly.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> report(
    ReportInstanceInfoRequest request,
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':report';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Resets a notebook instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> reset(
    ResetInstanceRequest request,
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':reset';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the guest accelerators of a single Instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> setAccelerator(
    SetInstanceAcceleratorRequest request,
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':setAccelerator';

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String $fields,
  }) async {
    core.String _url;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Replaces all the labels of an Instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> setLabels(
    SetInstanceLabelsRequest request,
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':setLabels';

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the machine type of a single Instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> setMachineType(
    SetInstanceMachineTypeRequest request,
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':setMachineType';

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Starts a notebook instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> start(
    StartInstanceRequest request,
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':start';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Stops a notebook instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> stop(
    StopInstanceRequest request,
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':stop';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String $fields,
  }) async {
    core.String _url;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Upgrades a notebook instance to the latest version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> upgrade(
    UpgradeInstanceRequest request,
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':upgrade';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Allows notebook instances to call this endpoint to upgrade themselves.
  ///
  /// Do not use this method directly.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> upgradeInternal(
    UpgradeInstanceInternalRequest request,
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':upgradeInternal';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Empty> cancel(
    CancelOperationRequest request,
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  /// NOTE: the `name` binding allows API services to override the binding to
  /// use different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(
    core.String name, {
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    core.String _url;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSchedulesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSchedulesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Scheduled Notebook in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// `parent=projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [scheduleId] - Required. User-defined unique ID of this schedule.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    Schedule request,
    core.String parent, {
    core.String scheduleId,
    core.String $fields,
  }) async {
    core.String _url;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (scheduleId != null) {
      _queryParams['scheduleId'] = [scheduleId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/schedules';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes schedule and all underlying jobs
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/schedules/{schedule_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schedules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of schedule
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/schedules/{schedule_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schedules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Schedule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Schedule> get(
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Schedule.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists schedules in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// `parent=projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter applied to resulting schedules.
  ///
  /// [orderBy] - Field to order results by.
  ///
  /// [pageSize] - Maximum return size of the list call.
  ///
  /// [pageToken] - A previous returned page token that can be used to continue
  /// listing from the last result.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSchedulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSchedulesResponse> list(
    core.String parent, {
    core.String filter,
    core.String orderBy,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    core.String _url;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (orderBy != null) {
      _queryParams['orderBy'] = [orderBy];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/schedules';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListSchedulesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Triggers execution of an existing schedule.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `parent=projects/{project_id}/locations/{location}/schedules/{schedule_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schedules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> trigger(
    TriggerScheduleRequest request,
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':trigger';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

/// Definition of a hardware accelerator.
///
/// Note that not all combinations of `type` and `core_count` are valid. Check
/// \[GPUs on Compute Engine\](/compute/docs/gpus/#gpus-list) to find a valid
/// combination. TPUs are not supported.
class AcceleratorConfig {
  /// Count of cores of this accelerator.
  core.String coreCount;

  /// Type of this accelerator.
  /// Possible string values are:
  /// - "ACCELERATOR_TYPE_UNSPECIFIED" : Accelerator type is not specified.
  /// - "NVIDIA_TESLA_K80" : Accelerator type is Nvidia Tesla K80.
  /// - "NVIDIA_TESLA_P100" : Accelerator type is Nvidia Tesla P100.
  /// - "NVIDIA_TESLA_V100" : Accelerator type is Nvidia Tesla V100.
  /// - "NVIDIA_TESLA_P4" : Accelerator type is Nvidia Tesla P4.
  /// - "NVIDIA_TESLA_T4" : Accelerator type is Nvidia Tesla T4.
  /// - "NVIDIA_TESLA_A100" : Accelerator type is Nvidia Tesla A100.
  /// - "NVIDIA_TESLA_T4_VWS" : Accelerator type is NVIDIA Tesla T4 Virtual
  /// Workstations.
  /// - "NVIDIA_TESLA_P100_VWS" : Accelerator type is NVIDIA Tesla P100 Virtual
  /// Workstations.
  /// - "NVIDIA_TESLA_P4_VWS" : Accelerator type is NVIDIA Tesla P4 Virtual
  /// Workstations.
  /// - "TPU_V2" : (Coming soon) Accelerator type is TPU V2.
  /// - "TPU_V3" : (Coming soon) Accelerator type is TPU V3.
  core.String type;

  AcceleratorConfig();

  AcceleratorConfig.fromJson(core.Map _json) {
    if (_json.containsKey('coreCount')) {
      coreCount = _json['coreCount'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (coreCount != null) {
      _json['coreCount'] = coreCount;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Associates `members` with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the members in this binding.
  /// To learn which resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. * `user:{emailid}`: An email address that represents a specific
  /// Google account. For example, `alice@example.com` . *
  /// `serviceAccount:{emailid}`: An email address that represents a service
  /// account. For example, `my-other-app@appspot.gserviceaccount.com`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a user that has
  /// been recently deleted. For example,
  /// `alice@example.com?uid=123456789012345678901`. If the user is recovered,
  /// this value reverts to `user:{emailid}` and the recovered user retains the
  /// role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a service account
  /// that has been recently deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. * `domain:{domain}`: The G Suite domain (primary)
  /// that represents all the users of that domain. For example, `google.com` or
  /// `example.com`.
  core.List<core.String> members;

  /// Role that is assigned to `members`.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey('condition')) {
      condition = Expr.fromJson(
          _json['condition'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('members')) {
      members = (_json['members'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('role')) {
      role = _json['role'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (condition != null) {
      _json['condition'] = condition.toJson();
    }
    if (members != null) {
      _json['members'] = members;
    }
    if (role != null) {
      _json['role'] = role;
    }
    return _json;
  }
}

/// The request message for Operations.CancelOperation.
class CancelOperationRequest {
  CancelOperationRequest();

  CancelOperationRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Definition of a container image for starting a notebook instance with the
/// environment installed in a container.
class ContainerImage {
  /// The path to the container image repository.
  ///
  /// For example: `gcr.io/{project_id}/{image_name}`
  ///
  /// Required.
  core.String repository;

  /// The tag of the container image.
  ///
  /// If not specified, this defaults to the latest tag.
  core.String tag;

  ContainerImage();

  ContainerImage.fromJson(core.Map _json) {
    if (_json.containsKey('repository')) {
      repository = _json['repository'] as core.String;
    }
    if (_json.containsKey('tag')) {
      tag = _json['tag'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (repository != null) {
      _json['repository'] = repository;
    }
    if (tag != null) {
      _json['tag'] = tag;
    }
    return _json;
  }
}

/// An instance-attached disk resource.
class Disk {
  /// Indicates whether the disk will be auto-deleted when the instance is
  /// deleted (but not when the disk is detached from the instance).
  core.bool autoDelete;

  /// Indicates that this is a boot disk.
  ///
  /// The virtual machine will use the first partition of the disk for its root
  /// filesystem.
  core.bool boot;

  /// Indicates a unique device name of your choice that is reflected into the
  /// /dev/disk/by-id/google-* tree of a Linux operating system running within
  /// the instance.
  ///
  /// This name can be used to reference the device for mounting, resizing, and
  /// so on, from within the instance. If not specified, the server chooses a
  /// default device name to apply to this disk, in the form persistent-disk-x,
  /// where x is a number assigned by Google Compute Engine.This field is only
  /// applicable for persistent disks.
  core.String deviceName;

  /// Indicates the size of the disk in base-2 GB.
  core.String diskSizeGb;

  /// Indicates a list of features to enable on the guest operating system.
  ///
  /// Applicable only for bootable images. Read Enabling guest operating system
  /// features to see a list of available options.
  core.List<GuestOsFeature> guestOsFeatures;

  /// A zero-based index to this disk, where 0 is reserved for the boot disk.
  ///
  /// If you have many disks attached to an instance, each disk would have a
  /// unique index number.
  core.String index;

  /// Indicates the disk interface to use for attaching this disk, which is
  /// either SCSI or NVME.
  ///
  /// The default is SCSI. Persistent disks must always use SCSI and the request
  /// will fail if you attempt to attach a persistent disk in any other format
  /// than SCSI. Local SSDs can use either NVME or SCSI. For performance
  /// characteristics of SCSI over NVMe, see Local SSD performance. Valid
  /// values: NVME SCSI
  core.String interface;

  /// Type of the resource.
  ///
  /// Always compute#attachedDisk for attached disks.
  core.String kind;

  /// A list of publicly visible licenses.
  ///
  /// Reserved for Google's use. A License represents billing and aggregate
  /// usage data for public and marketplace images.
  core.List<core.String> licenses;

  /// The mode in which to attach this disk, either READ_WRITE or READ_ONLY.
  ///
  /// If not specified, the default is to attach the disk in READ_WRITE mode.
  /// Valid values: READ_ONLY READ_WRITE
  core.String mode;

  /// Indicates a valid partial or full URL to an existing Persistent Disk
  /// resource.
  core.String source;

  /// Indicates the type of the disk, either SCRATCH or PERSISTENT.
  ///
  /// Valid values: PERSISTENT SCRATCH
  core.String type;

  Disk();

  Disk.fromJson(core.Map _json) {
    if (_json.containsKey('autoDelete')) {
      autoDelete = _json['autoDelete'] as core.bool;
    }
    if (_json.containsKey('boot')) {
      boot = _json['boot'] as core.bool;
    }
    if (_json.containsKey('deviceName')) {
      deviceName = _json['deviceName'] as core.String;
    }
    if (_json.containsKey('diskSizeGb')) {
      diskSizeGb = _json['diskSizeGb'] as core.String;
    }
    if (_json.containsKey('guestOsFeatures')) {
      guestOsFeatures = (_json['guestOsFeatures'] as core.List)
          .map<GuestOsFeature>((value) => GuestOsFeature.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('index')) {
      index = _json['index'] as core.String;
    }
    if (_json.containsKey('interface')) {
      interface = _json['interface'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('licenses')) {
      licenses = (_json['licenses'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('mode')) {
      mode = _json['mode'] as core.String;
    }
    if (_json.containsKey('source')) {
      source = _json['source'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (autoDelete != null) {
      _json['autoDelete'] = autoDelete;
    }
    if (boot != null) {
      _json['boot'] = boot;
    }
    if (deviceName != null) {
      _json['deviceName'] = deviceName;
    }
    if (diskSizeGb != null) {
      _json['diskSizeGb'] = diskSizeGb;
    }
    if (guestOsFeatures != null) {
      _json['guestOsFeatures'] =
          guestOsFeatures.map((value) => value.toJson()).toList();
    }
    if (index != null) {
      _json['index'] = index;
    }
    if (interface != null) {
      _json['interface'] = interface;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (licenses != null) {
      _json['licenses'] = licenses;
    }
    if (mode != null) {
      _json['mode'] = mode;
    }
    if (source != null) {
      _json['source'] = source;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Definition of a software environment that is used to start a notebook
/// instance.
class Environment {
  /// Use a container image to start the notebook instance.
  ContainerImage containerImage;

  /// The time at which this environment was created.
  ///
  /// Output only.
  core.String createTime;

  /// A brief description of this environment.
  core.String description;

  /// Display name of this environment for the UI.
  core.String displayName;

  /// Name of this environment.
  ///
  /// Format:
  /// `projects/{project_id}/locations/{location}/environments/{environment_id}`
  ///
  /// Output only.
  core.String name;

  /// Path to a Bash script that automatically runs after a notebook instance
  /// fully boots up.
  ///
  /// The path must be a URL or Cloud Storage path. Example:
  /// `"gs://path-to-file/file-name"`
  core.String postStartupScript;

  /// Use a Compute Engine VM image to start the notebook instance.
  VmImage vmImage;

  Environment();

  Environment.fromJson(core.Map _json) {
    if (_json.containsKey('containerImage')) {
      containerImage = ContainerImage.fromJson(
          _json['containerImage'] as core.Map<core.String, core.dynamic>);
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
    if (_json.containsKey('postStartupScript')) {
      postStartupScript = _json['postStartupScript'] as core.String;
    }
    if (_json.containsKey('vmImage')) {
      vmImage = VmImage.fromJson(
          _json['vmImage'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (containerImage != null) {
      _json['containerImage'] = containerImage.toJson();
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (postStartupScript != null) {
      _json['postStartupScript'] = postStartupScript;
    }
    if (vmImage != null) {
      _json['vmImage'] = vmImage.toJson();
    }
    return _json;
  }
}

/// The definition of a single executed notebook.
class Execution {
  /// Time the Execution was instantiated.
  ///
  /// Output only.
  core.String createTime;

  /// A brief description of this execution.
  core.String description;

  /// Name used for UI purposes.
  ///
  /// Name can only contain alphanumeric characters and underscores '_'.
  ///
  /// Output only.
  core.String displayName;

  /// execute metadata including name, hardware spec, region, labels, etc.
  ExecutionTemplate executionTemplate;

  /// The resource name of the execute.
  ///
  /// Format:
  /// \`projects/{project_id}/locations/{location}/execution/{execution_id}
  ///
  /// Output only.
  core.String name;

  /// Output notebook file generated by this execution
  core.String outputNotebookFile;

  /// State of the underlying AI Platform job.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The job state is unspecified.
  /// - "QUEUED" : The job has been just created and processing has not yet
  /// begun.
  /// - "PREPARING" : The service is preparing to execution the job.
  /// - "RUNNING" : The job is in progress.
  /// - "SUCCEEDED" : The job completed successfully.
  /// - "FAILED" : The job failed. `error_message` should contain the details of
  /// the failure.
  /// - "CANCELLING" : The job is being cancelled. `error_message` should
  /// describe the reason for the cancellation.
  /// - "CANCELLED" : The job has been cancelled. `error_message` should
  /// describe the reason for the cancellation.
  core.String state;

  /// Time the Execution was last updated.
  ///
  /// Output only.
  core.String updateTime;

  Execution();

  Execution.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('executionTemplate')) {
      executionTemplate = ExecutionTemplate.fromJson(
          _json['executionTemplate'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('outputNotebookFile')) {
      outputNotebookFile = _json['outputNotebookFile'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (executionTemplate != null) {
      _json['executionTemplate'] = executionTemplate.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (outputNotebookFile != null) {
      _json['outputNotebookFile'] = outputNotebookFile;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// The description a notebook execution workload.
class ExecutionTemplate {
  /// Configuration (count and accelerator type) for hardware running notebook
  /// execution.
  SchedulerAcceleratorConfig acceleratorConfig;

  /// Container Image URI to a DLVM Example:
  /// 'gcr.io/deeplearning-platform-release/base-cu100' More examples can be
  /// found at:
  /// https://cloud.google.com/ai-platform/deep-learning-containers/docs/choosing-container
  core.String containerImageUri;

  /// Path to the notebook file to execute.
  ///
  /// Must be in a Google Cloud Storage bucket. Format:
  /// gs://{project_id}/{folder}/{notebook_file_name} Ex:
  /// gs://notebook_user/scheduled_notebooks/sentiment_notebook.ipynb
  core.String inputNotebookFile;

  /// Labels for execution.
  ///
  /// If execution is scheduled, a field included will be 'nbs-scheduled'.
  /// Otherwise, it is an immediate execution, and an included field will be
  /// 'nbs-immediate'. Use fields to efficiently index between various types of
  /// executions.
  core.Map<core.String, core.String> labels;

  /// Specifies the type of virtual machine to use for your training job's
  /// master worker.
  ///
  /// You must specify this field when `scaleTier` is set to `CUSTOM`. You can
  /// use certain Compute Engine machine types directly in this field. The
  /// following types are supported: - `n1-standard-4` - `n1-standard-8` -
  /// `n1-standard-16` - `n1-standard-32` - `n1-standard-64` - `n1-standard-96`
  /// - `n1-highmem-2` - `n1-highmem-4` - `n1-highmem-8` - `n1-highmem-16` -
  /// `n1-highmem-32` - `n1-highmem-64` - `n1-highmem-96` - `n1-highcpu-16` -
  /// `n1-highcpu-32` - `n1-highcpu-64` - `n1-highcpu-96` Alternatively, you can
  /// use the following legacy machine types: - `standard` - `large_model` -
  /// `complex_model_s` - `complex_model_m` - `complex_model_l` - `standard_gpu`
  /// - `complex_model_m_gpu` - `complex_model_l_gpu` - `standard_p100` -
  /// `complex_model_m_p100` - `standard_v100` - `large_model_v100` -
  /// `complex_model_m_v100` - `complex_model_l_v100` Finally, if you want to
  /// use a TPU for training, specify `cloud_tpu` in this field. Learn more
  /// about the \[special configuration options for training with TPU.
  core.String masterType;

  /// Path to the notebook folder to write to.
  ///
  /// Must be in a Google Cloud Storage bucket path. Format:
  /// gs://{project_id}/{folder} Ex: gs://notebook_user/scheduled_notebooks
  core.String outputNotebookFolder;

  /// Parameters to be overridden in the notebook during execution.
  ///
  /// Ref https://papermill.readthedocs.io/en/latest/usage-parameterize.html on
  /// how to specifying parameters in the input notebook and pass them here in
  /// an YAML file. Ex:
  /// gs://notebook_user/scheduled_notebooks/sentiment_notebook_params.yaml
  core.String paramsYamlFile;

  /// Scale tier of the hardware used for notebook execution.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SCALE_TIER_UNSPECIFIED" : Unspecified Scale Tier.
  /// - "BASIC" : A single worker instance. This tier is suitable for learning
  /// how to use Cloud ML, and for experimenting with new models using small
  /// datasets.
  /// - "STANDARD_1" : Many workers and a few parameter servers.
  /// - "PREMIUM_1" : A large number of workers with many parameter servers.
  /// - "BASIC_GPU" : A single worker instance with a K80 GPU.
  /// - "BASIC_TPU" : A single worker instance with a Cloud TPU.
  /// - "CUSTOM" : The CUSTOM tier is not a set tier, but rather enables you to
  /// use your own cluster specification. When you use this tier, set values to
  /// configure your processing cluster according to these guidelines: * You
  /// _must_ set `TrainingInput.masterType` to specify the type of machine to
  /// use for your master node. This is the only required setting. * You _may_
  /// set `TrainingInput.workerCount` to specify the number of workers to use.
  /// If you specify one or more workers, you _must_ also set
  /// `TrainingInput.workerType` to specify the type of machine to use for your
  /// worker nodes. * You _may_ set `TrainingInput.parameterServerCount` to
  /// specify the number of parameter servers to use. If you specify one or more
  /// parameter servers, you _must_ also set `TrainingInput.parameterServerType`
  /// to specify the type of machine to use for your parameter servers. Note
  /// that all of your workers must use the same machine type, which can be
  /// different from your parameter server type and master type. Your parameter
  /// servers must likewise use the same machine type, which can be different
  /// from your worker type and master type.
  core.String scaleTier;

  ExecutionTemplate();

  ExecutionTemplate.fromJson(core.Map _json) {
    if (_json.containsKey('acceleratorConfig')) {
      acceleratorConfig = SchedulerAcceleratorConfig.fromJson(
          _json['acceleratorConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('containerImageUri')) {
      containerImageUri = _json['containerImageUri'] as core.String;
    }
    if (_json.containsKey('inputNotebookFile')) {
      inputNotebookFile = _json['inputNotebookFile'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('masterType')) {
      masterType = _json['masterType'] as core.String;
    }
    if (_json.containsKey('outputNotebookFolder')) {
      outputNotebookFolder = _json['outputNotebookFolder'] as core.String;
    }
    if (_json.containsKey('paramsYamlFile')) {
      paramsYamlFile = _json['paramsYamlFile'] as core.String;
    }
    if (_json.containsKey('scaleTier')) {
      scaleTier = _json['scaleTier'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (acceleratorConfig != null) {
      _json['acceleratorConfig'] = acceleratorConfig.toJson();
    }
    if (containerImageUri != null) {
      _json['containerImageUri'] = containerImageUri;
    }
    if (inputNotebookFile != null) {
      _json['inputNotebookFile'] = inputNotebookFile;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (masterType != null) {
      _json['masterType'] = masterType;
    }
    if (outputNotebookFolder != null) {
      _json['outputNotebookFolder'] = outputNotebookFolder;
    }
    if (paramsYamlFile != null) {
      _json['paramsYamlFile'] = paramsYamlFile;
    }
    if (scaleTier != null) {
      _json['scaleTier'] = scaleTier;
    }
    return _json;
  }
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() < 100" Example
/// (Equality): title: "Requestor is owner" description: "Determines if
/// requestor is the document owner" expression: "document.owner ==
/// request.auth.claims.email" Example (Logic): title: "Public documents"
/// description: "Determine whether the document should be publicly visible"
/// expression: "document.type != 'private' && document.type != 'internal'"
/// Example (Data Manipulation): title: "Notification string" description:
/// "Create a notification string with a timestamp." expression: "'New message
/// received at ' + string(document.create_time)" The exact variables and
/// functions that may be referenced within an expression are determined by the
/// service that evaluates it. See the service documentation for additional
/// information.
class Expr {
  /// Description of the expression.
  ///
  /// This is a longer text which describes the expression, e.g. when hovered
  /// over it in a UI.
  ///
  /// Optional.
  core.String description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  core.String expression;

  /// String indicating the location of the expression for error reporting, e.g.
  /// a file name and a position in the file.
  ///
  /// Optional.
  core.String location;

  /// Title for the expression, i.e. a short string describing its purpose.
  ///
  /// This can be used e.g. in UIs which allow to enter the expression.
  ///
  /// Optional.
  core.String title;

  Expr();

  Expr.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('expression')) {
      expression = _json['expression'] as core.String;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (expression != null) {
      _json['expression'] = expression;
    }
    if (location != null) {
      _json['location'] = location;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Response for checking if a notebook instance is healthy.
class GetInstanceHealthResponse {
  /// Additional information about instance health.
  ///
  /// Example: healthInfo": { "docker_proxy_agent_status": "1", "docker_status":
  /// "1", "jupyterlab_api_status": "-1", "jupyterlab_status": "-1", "updated":
  /// "2020-10-18 09:40:03.573409" }
  ///
  /// Output only.
  core.Map<core.String, core.String> healthInfo;

  /// Runtime health_state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "HEALTH_STATE_UNSPECIFIED" : The instance substate is unknown.
  /// - "HEALTHY" : The instance is known to be in an healthy state (for
  /// example, critical daemons are running) Applies to ACTIVE state.
  /// - "UNHEALTHY" : The instance is known to be in an unhealthy state (for
  /// example, critical daemons are not running) Applies to ACTIVE state.
  /// - "AGENT_NOT_INSTALLED" : The instance has not installed health monitoring
  /// agent. Applies to ACTIVE state.
  /// - "AGENT_NOT_RUNNING" : The instance health monitoring agent is not
  /// running. Applies to ACTIVE state.
  core.String healthState;

  GetInstanceHealthResponse();

  GetInstanceHealthResponse.fromJson(core.Map _json) {
    if (_json.containsKey('healthInfo')) {
      healthInfo = (_json['healthInfo'] as core.Map)
          .cast<core.String, core.String>()
          .map(
            (key, item) => core.MapEntry(
              key,
              item as core.String,
            ),
          );
    }
    if (_json.containsKey('healthState')) {
      healthState = _json['healthState'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (healthInfo != null) {
      _json['healthInfo'] = healthInfo;
    }
    if (healthState != null) {
      _json['healthState'] = healthState;
    }
    return _json;
  }
}

/// Guest OS features for boot disk.
class GuestOsFeature {
  /// The ID of a supported feature.
  ///
  /// Read Enabling guest operating system features to see a list of available
  /// options. Valid values: FEATURE_TYPE_UNSPECIFIED MULTI_IP_SUBNET
  /// SECURE_BOOT UEFI_COMPATIBLE VIRTIO_SCSI_MULTIQUEUE WINDOWS
  core.String type;

  GuestOsFeature();

  GuestOsFeature.fromJson(core.Map _json) {
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// The definition of a notebook instance.
class Instance {
  /// The hardware accelerator used on this instance.
  ///
  /// If you use accelerators, make sure that your configuration has \[enough
  /// vCPUs and memory to support the `machine_type` you have
  /// selected\](/compute/docs/gpus/#gpus-list).
  AcceleratorConfig acceleratorConfig;

  /// Input only.
  ///
  /// The size of the boot disk in GB attached to this instance, up to a maximum
  /// of 64000 GB (64 TB). The minimum recommended value is 100 GB. If not
  /// specified, this defaults to 100.
  core.String bootDiskSizeGb;

  /// Input only.
  ///
  /// The type of the boot disk attached to this instance, defaults to standard
  /// persistent disk (`PD_STANDARD`).
  /// Possible string values are:
  /// - "DISK_TYPE_UNSPECIFIED" : Disk type not set.
  /// - "PD_STANDARD" : Standard persistent disk type.
  /// - "PD_SSD" : SSD persistent disk type.
  /// - "PD_BALANCED" : Balanced persistent disk type.
  core.String bootDiskType;

  /// Use a container image to start the notebook instance.
  ContainerImage containerImage;

  /// Instance creation time.
  ///
  /// Output only.
  core.String createTime;

  /// Specify a custom Cloud Storage path where the GPU driver is stored.
  ///
  /// If not specified, we'll automatically choose from official GPU drivers.
  core.String customGpuDriverPath;

  /// Input only.
  ///
  /// The size of the data disk in GB attached to this instance, up to a maximum
  /// of 64000 GB (64 TB). You can choose the size of the data disk based on how
  /// big your notebooks and data are. If not specified, this defaults to 100.
  core.String dataDiskSizeGb;

  /// Input only.
  ///
  /// The type of the data disk attached to this instance, defaults to standard
  /// persistent disk (`PD_STANDARD`).
  /// Possible string values are:
  /// - "DISK_TYPE_UNSPECIFIED" : Disk type not set.
  /// - "PD_STANDARD" : Standard persistent disk type.
  /// - "PD_SSD" : SSD persistent disk type.
  /// - "PD_BALANCED" : Balanced persistent disk type.
  core.String dataDiskType;

  /// Input only.
  ///
  /// Disk encryption method used on the boot and data disks, defaults to GMEK.
  /// Possible string values are:
  /// - "DISK_ENCRYPTION_UNSPECIFIED" : Disk encryption is not specified.
  /// - "GMEK" : Use Google managed encryption keys to encrypt the boot disk.
  /// - "CMEK" : Use customer managed encryption keys to encrypt the boot disk.
  core.String diskEncryption;

  /// Attached disks to notebook instance.
  ///
  /// Output only.
  core.List<Disk> disks;

  /// Whether the end user authorizes Google Cloud to install GPU driver on this
  /// instance.
  ///
  /// If this field is empty or set to false, the GPU driver won't be installed.
  /// Only applicable to instances with GPUs.
  core.bool installGpuDriver;

  /// Input only.
  ///
  /// The owner of this instance after creation. Format: `alias@example.com`
  /// Currently supports one owner only. If not specified, all of the service
  /// account users of your VM instance's service account can use the instance.
  core.List<core.String> instanceOwners;

  /// Input only.
  ///
  /// The KMS key used to encrypt the disks, only applicable if disk_encryption
  /// is CMEK. Format:
  /// `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}`
  /// Learn more about \[using your own encryption keys\](/kms/docs/quickstart).
  core.String kmsKey;

  /// Labels to apply to this instance.
  ///
  /// These can be later modified by the setLabels method.
  core.Map<core.String, core.String> labels;

  /// The \[Compute Engine machine type\](/compute/docs/machine-types) of this
  /// instance.
  ///
  /// Required.
  core.String machineType;

  /// Custom metadata to apply to this instance.
  core.Map<core.String, core.String> metadata;

  /// The name of this notebook instance.
  ///
  /// Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  ///
  /// Output only.
  core.String name;

  /// The name of the VPC that this instance is in.
  ///
  /// Format: `projects/{project_id}/global/networks/{network_id}`
  core.String network;

  /// If true, the notebook instance will not register with the proxy.
  core.bool noProxyAccess;

  /// If true, no public IP will be assigned to this instance.
  core.bool noPublicIp;

  /// Input only.
  ///
  /// If true, the data disk will not be auto deleted when deleting the
  /// instance.
  core.bool noRemoveDataDisk;

  /// Path to a Bash script that automatically runs after a notebook instance
  /// fully boots up.
  ///
  /// The path must be a URL or Cloud Storage path
  /// (gs://path-to-file/file-name).
  core.String postStartupScript;

  /// The proxy endpoint that is used to access the Jupyter notebook.
  ///
  /// Output only.
  core.String proxyUri;

  /// The service account on this instance, giving access to other Google Cloud
  /// services.
  ///
  /// You can use any service account within the same project, but you must have
  /// the service account user permission to use the instance. If not specified,
  /// the
  /// [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account)
  /// is used.
  core.String serviceAccount;

  /// The URIs of service account scopes to be included in Compute Engine
  /// instances.
  ///
  /// If not specified, the following
  /// [scopes](https://cloud.google.com/compute/docs/access/service-accounts#accesscopesiam)
  /// are defined: - https://www.googleapis.com/auth/cloud-platform -
  /// https://www.googleapis.com/auth/userinfo.email If not using default
  /// scopes, you need at least: https://www.googleapis.com/auth/compute
  ///
  /// Optional.
  core.List<core.String> serviceAccountScopes;

  /// Shielded VM configuration.
  ///
  /// [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
  ///
  /// Optional.
  ShieldedInstanceConfig shieldedInstanceConfig;

  /// The state of this instance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State is not specified.
  /// - "STARTING" : The control logic is starting the instance.
  /// - "PROVISIONING" : The control logic is installing required frameworks and
  /// registering the instance with notebook proxy
  /// - "ACTIVE" : The instance is running.
  /// - "STOPPING" : The control logic is stopping the instance.
  /// - "STOPPED" : The instance is stopped.
  /// - "DELETED" : The instance is deleted.
  /// - "UPGRADING" : The instance is upgrading.
  /// - "INITIALIZING" : The instance is being created.
  /// - "REGISTERING" : The instance is getting registered.
  core.String state;

  /// The name of the subnet that this instance is in.
  ///
  /// Format:
  /// `projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}`
  core.String subnet;

  /// The Compute Engine tags to add to runtime (see
  /// [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  ///
  /// Optional.
  core.List<core.String> tags;

  /// Instance update time.
  ///
  /// Output only.
  core.String updateTime;

  /// The upgrade history of this instance.
  core.List<UpgradeHistoryEntry> upgradeHistory;

  /// Use a Compute Engine VM image to start the notebook instance.
  VmImage vmImage;

  Instance();

  Instance.fromJson(core.Map _json) {
    if (_json.containsKey('acceleratorConfig')) {
      acceleratorConfig = AcceleratorConfig.fromJson(
          _json['acceleratorConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('bootDiskSizeGb')) {
      bootDiskSizeGb = _json['bootDiskSizeGb'] as core.String;
    }
    if (_json.containsKey('bootDiskType')) {
      bootDiskType = _json['bootDiskType'] as core.String;
    }
    if (_json.containsKey('containerImage')) {
      containerImage = ContainerImage.fromJson(
          _json['containerImage'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('customGpuDriverPath')) {
      customGpuDriverPath = _json['customGpuDriverPath'] as core.String;
    }
    if (_json.containsKey('dataDiskSizeGb')) {
      dataDiskSizeGb = _json['dataDiskSizeGb'] as core.String;
    }
    if (_json.containsKey('dataDiskType')) {
      dataDiskType = _json['dataDiskType'] as core.String;
    }
    if (_json.containsKey('diskEncryption')) {
      diskEncryption = _json['diskEncryption'] as core.String;
    }
    if (_json.containsKey('disks')) {
      disks = (_json['disks'] as core.List)
          .map<Disk>((value) =>
              Disk.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('installGpuDriver')) {
      installGpuDriver = _json['installGpuDriver'] as core.bool;
    }
    if (_json.containsKey('instanceOwners')) {
      instanceOwners = (_json['instanceOwners'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('kmsKey')) {
      kmsKey = _json['kmsKey'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('machineType')) {
      machineType = _json['machineType'] as core.String;
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('network')) {
      network = _json['network'] as core.String;
    }
    if (_json.containsKey('noProxyAccess')) {
      noProxyAccess = _json['noProxyAccess'] as core.bool;
    }
    if (_json.containsKey('noPublicIp')) {
      noPublicIp = _json['noPublicIp'] as core.bool;
    }
    if (_json.containsKey('noRemoveDataDisk')) {
      noRemoveDataDisk = _json['noRemoveDataDisk'] as core.bool;
    }
    if (_json.containsKey('postStartupScript')) {
      postStartupScript = _json['postStartupScript'] as core.String;
    }
    if (_json.containsKey('proxyUri')) {
      proxyUri = _json['proxyUri'] as core.String;
    }
    if (_json.containsKey('serviceAccount')) {
      serviceAccount = _json['serviceAccount'] as core.String;
    }
    if (_json.containsKey('serviceAccountScopes')) {
      serviceAccountScopes = (_json['serviceAccountScopes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('shieldedInstanceConfig')) {
      shieldedInstanceConfig = ShieldedInstanceConfig.fromJson(
          _json['shieldedInstanceConfig']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('subnet')) {
      subnet = _json['subnet'] as core.String;
    }
    if (_json.containsKey('tags')) {
      tags = (_json['tags'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
    if (_json.containsKey('upgradeHistory')) {
      upgradeHistory = (_json['upgradeHistory'] as core.List)
          .map<UpgradeHistoryEntry>((value) => UpgradeHistoryEntry.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('vmImage')) {
      vmImage = VmImage.fromJson(
          _json['vmImage'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (acceleratorConfig != null) {
      _json['acceleratorConfig'] = acceleratorConfig.toJson();
    }
    if (bootDiskSizeGb != null) {
      _json['bootDiskSizeGb'] = bootDiskSizeGb;
    }
    if (bootDiskType != null) {
      _json['bootDiskType'] = bootDiskType;
    }
    if (containerImage != null) {
      _json['containerImage'] = containerImage.toJson();
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (customGpuDriverPath != null) {
      _json['customGpuDriverPath'] = customGpuDriverPath;
    }
    if (dataDiskSizeGb != null) {
      _json['dataDiskSizeGb'] = dataDiskSizeGb;
    }
    if (dataDiskType != null) {
      _json['dataDiskType'] = dataDiskType;
    }
    if (diskEncryption != null) {
      _json['diskEncryption'] = diskEncryption;
    }
    if (disks != null) {
      _json['disks'] = disks.map((value) => value.toJson()).toList();
    }
    if (installGpuDriver != null) {
      _json['installGpuDriver'] = installGpuDriver;
    }
    if (instanceOwners != null) {
      _json['instanceOwners'] = instanceOwners;
    }
    if (kmsKey != null) {
      _json['kmsKey'] = kmsKey;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (machineType != null) {
      _json['machineType'] = machineType;
    }
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (network != null) {
      _json['network'] = network;
    }
    if (noProxyAccess != null) {
      _json['noProxyAccess'] = noProxyAccess;
    }
    if (noPublicIp != null) {
      _json['noPublicIp'] = noPublicIp;
    }
    if (noRemoveDataDisk != null) {
      _json['noRemoveDataDisk'] = noRemoveDataDisk;
    }
    if (postStartupScript != null) {
      _json['postStartupScript'] = postStartupScript;
    }
    if (proxyUri != null) {
      _json['proxyUri'] = proxyUri;
    }
    if (serviceAccount != null) {
      _json['serviceAccount'] = serviceAccount;
    }
    if (serviceAccountScopes != null) {
      _json['serviceAccountScopes'] = serviceAccountScopes;
    }
    if (shieldedInstanceConfig != null) {
      _json['shieldedInstanceConfig'] = shieldedInstanceConfig.toJson();
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (subnet != null) {
      _json['subnet'] = subnet;
    }
    if (tags != null) {
      _json['tags'] = tags;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    if (upgradeHistory != null) {
      _json['upgradeHistory'] =
          upgradeHistory.map((value) => value.toJson()).toList();
    }
    if (vmImage != null) {
      _json['vmImage'] = vmImage.toJson();
    }
    return _json;
  }
}

/// Response for checking if a notebook instance is upgradeable.
class IsInstanceUpgradeableResponse {
  /// Additional information about upgrade.
  core.String upgradeInfo;

  /// The version this instance will be upgraded to if calling the upgrade
  /// endpoint.
  ///
  /// This field will only be populated if field upgradeable is true.
  core.String upgradeVersion;

  /// If an instance is upgradeable.
  core.bool upgradeable;

  IsInstanceUpgradeableResponse();

  IsInstanceUpgradeableResponse.fromJson(core.Map _json) {
    if (_json.containsKey('upgradeInfo')) {
      upgradeInfo = _json['upgradeInfo'] as core.String;
    }
    if (_json.containsKey('upgradeVersion')) {
      upgradeVersion = _json['upgradeVersion'] as core.String;
    }
    if (_json.containsKey('upgradeable')) {
      upgradeable = _json['upgradeable'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (upgradeInfo != null) {
      _json['upgradeInfo'] = upgradeInfo;
    }
    if (upgradeVersion != null) {
      _json['upgradeVersion'] = upgradeVersion;
    }
    if (upgradeable != null) {
      _json['upgradeable'] = upgradeable;
    }
    return _json;
  }
}

/// Response for listing environments.
class ListEnvironmentsResponse {
  /// A list of returned environments.
  core.List<Environment> environments;

  /// A page token that can be used to continue listing from the last result in
  /// the next list call.
  core.String nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String> unreachable;

  ListEnvironmentsResponse();

  ListEnvironmentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('environments')) {
      environments = (_json['environments'] as core.List)
          .map<Environment>((value) => Environment.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('unreachable')) {
      unreachable = (_json['unreachable'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (environments != null) {
      _json['environments'] =
          environments.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (unreachable != null) {
      _json['unreachable'] = unreachable;
    }
    return _json;
  }
}

/// Response for listing scheduled notebook executions
class ListExecutionsResponse {
  /// A list of returned instances.
  core.List<Execution> executions;

  /// Page token that can be used to continue listing from the last result in
  /// the next list call.
  core.String nextPageToken;

  /// Executions IDs that could not be reached.
  ///
  /// For example,
  /// \['projects/{project_id}/location/{location}/executions/imagenet_test1',
  /// 'projects/{project_id}/location/{location}/executions/classifier_train1'\].
  core.List<core.String> unreachable;

  ListExecutionsResponse();

  ListExecutionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('executions')) {
      executions = (_json['executions'] as core.List)
          .map<Execution>((value) =>
              Execution.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('unreachable')) {
      unreachable = (_json['unreachable'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (executions != null) {
      _json['executions'] = executions.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (unreachable != null) {
      _json['unreachable'] = unreachable;
    }
    return _json;
  }
}

/// Response for listing notebook instances.
class ListInstancesResponse {
  /// A list of returned instances.
  core.List<Instance> instances;

  /// Page token that can be used to continue listing from the last result in
  /// the next list call.
  core.String nextPageToken;

  /// Locations that could not be reached.
  ///
  /// For example, \['us-west1-a', 'us-central1-b'\]. A ListInstancesResponse
  /// will only contain either instances or unreachables,
  core.List<core.String> unreachable;

  ListInstancesResponse();

  ListInstancesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('instances')) {
      instances = (_json['instances'] as core.List)
          .map<Instance>((value) =>
              Instance.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('unreachable')) {
      unreachable = (_json['unreachable'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (instances != null) {
      _json['instances'] = instances.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (unreachable != null) {
      _json['unreachable'] = unreachable;
    }
    return _json;
  }
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location> locations;

  /// The standard List next-page token.
  core.String nextPageToken;

  ListLocationsResponse();

  ListLocationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('locations')) {
      locations = (_json['locations'] as core.List)
          .map<Location>((value) =>
              Location.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (locations != null) {
      _json['locations'] = locations.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('operations')) {
      operations = (_json['operations'] as core.List)
          .map<Operation>((value) =>
              Operation.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (operations != null) {
      _json['operations'] = operations.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response for listing scheduled notebook job.
class ListSchedulesResponse {
  /// Page token that can be used to continue listing from the last result in
  /// the next list call.
  core.String nextPageToken;

  /// A list of returned instances.
  core.List<Schedule> schedules;

  /// Schedules that could not be reached.
  ///
  /// For example,
  /// \['projects/{project_id}/location/{location}/schedules/monthly_digest',
  /// 'projects/{project_id}/location/{location}/schedules/weekly_sentiment'\].
  core.List<core.String> unreachable;

  ListSchedulesResponse();

  ListSchedulesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('schedules')) {
      schedules = (_json['schedules'] as core.List)
          .map<Schedule>((value) =>
              Schedule.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('unreachable')) {
      unreachable = (_json['unreachable'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (schedules != null) {
      _json['schedules'] = schedules.map((value) => value.toJson()).toList();
    }
    if (unreachable != null) {
      _json['unreachable'] = unreachable;
    }
    return _json;
  }
}

/// A resource that represents Google Cloud Platform location.
class Location {
  /// The friendly name for this location, typically a nearby city name.
  ///
  /// For example, "Tokyo".
  core.String displayName;

  /// Cross-service attributes for the location.
  ///
  /// For example {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String> labels;

  /// The canonical id for this location.
  ///
  /// For example: `"us-east1"`.
  core.String locationId;

  /// Service-specific metadata.
  ///
  /// For example the available capacity at the given location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// Resource name for the location, which may vary between implementations.
  ///
  /// For example: `"projects/example-project/locations/us-east1"`
  core.String name;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('locationId')) {
      locationId = _json['locationId'] as core.String;
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (locationId != null) {
      _json['locationId'] = locationId;
    }
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String name;

  /// The normal response of the operation in case of success.
  ///
  /// If the original method returns no data on success, such as `Delete`, the
  /// response is `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey('done')) {
      done = _json['done'] as core.bool;
    }
    if (_json.containsKey('error')) {
      error = Status.fromJson(
          _json['error'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('response')) {
      response =
          (_json['response'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (done != null) {
      _json['done'] = done;
    }
    if (error != null) {
      _json['error'] = error.toJson();
    }
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (response != null) {
      _json['response'] = response;
    }
    return _json;
  }
}

/// Represents the metadata of the long-running operation.
class OperationMetadata {
  /// API version used to start the operation.
  core.String apiVersion;

  /// The time the operation was created.
  core.String createTime;

  /// The time the operation finished running.
  core.String endTime;

  /// API endpoint name of this operation.
  core.String endpoint;

  /// Identifies whether the user has requested cancellation of the operation.
  ///
  /// Operations that have successfully been cancelled have Operation.error
  /// value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  core.bool requestedCancellation;

  /// Human-readable status of the operation, if any.
  core.String statusMessage;

  /// Server-defined resource path for the target of the operation.
  core.String target;

  /// Name of the verb executed by the operation.
  core.String verb;

  OperationMetadata();

  OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('apiVersion')) {
      apiVersion = _json['apiVersion'] as core.String;
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('endpoint')) {
      endpoint = _json['endpoint'] as core.String;
    }
    if (_json.containsKey('requestedCancellation')) {
      requestedCancellation = _json['requestedCancellation'] as core.bool;
    }
    if (_json.containsKey('statusMessage')) {
      statusMessage = _json['statusMessage'] as core.String;
    }
    if (_json.containsKey('target')) {
      target = _json['target'] as core.String;
    }
    if (_json.containsKey('verb')) {
      verb = _json['verb'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (apiVersion != null) {
      _json['apiVersion'] = apiVersion;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (endpoint != null) {
      _json['endpoint'] = endpoint;
    }
    if (requestedCancellation != null) {
      _json['requestedCancellation'] = requestedCancellation;
    }
    if (statusMessage != null) {
      _json['statusMessage'] = statusMessage;
    }
    if (target != null) {
      _json['target'] = target;
    }
    if (verb != null) {
      _json['verb'] = verb;
    }
    return _json;
  }
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members` to a single `role`. Members can be user accounts, service
/// accounts, Google groups, and domains (such as G Suite). A `role` is a named
/// list of permissions; each `role` can be an IAM predefined role or a
/// user-created custom role. For some types of Google Cloud resources, a
/// `binding` can also specify a `condition`, which is a logical expression that
/// allows access to a resource only if the expression evaluates to `true`. A
/// condition can add constraints based on attributes of the request, the
/// resource, or both. To learn which resources support conditions in their IAM
/// policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time < timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= -
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Associates a list of `members` to a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// member.
  core.List<Binding> bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag);

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the format of the policy.
  ///
  /// Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
  /// are rejected. Any operation that affects conditional role bindings must
  /// specify version `3`. This requirement applies to the following operations:
  /// * Getting a policy that includes a conditional role binding * Adding a
  /// conditional role binding to a policy * Changing a conditional role binding
  /// in a policy * Removing any role binding, with or without a condition, from
  /// a policy that includes conditions **Important:** If you use IAM
  /// Conditions, you must include the `etag` field whenever you call
  /// `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a
  /// version `3` policy with a version `1` policy, and all of the conditions in
  /// the version `3` policy are lost. If a policy does not include any
  /// conditions, operations on that policy may specify any valid version or
  /// leave the field unset. To learn which resources support conditions in
  /// their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey('bindings')) {
      bindings = (_json['bindings'] as core.List)
          .map<Binding>((value) =>
              Binding.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (bindings != null) {
      _json['bindings'] = bindings.map((value) => value.toJson()).toList();
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (version != null) {
      _json['version'] = version;
    }
    return _json;
  }
}

/// Request for registering a notebook instance.
class RegisterInstanceRequest {
  /// User defined unique ID of this instance.
  ///
  /// The `instance_id` must be 1 to 63 characters long and contain only
  /// lowercase letters, numeric characters, and dashes. The first character
  /// must be a lowercase letter and the last character cannot be a dash.
  ///
  /// Required.
  core.String instanceId;

  RegisterInstanceRequest();

  RegisterInstanceRequest.fromJson(core.Map _json) {
    if (_json.containsKey('instanceId')) {
      instanceId = _json['instanceId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (instanceId != null) {
      _json['instanceId'] = instanceId;
    }
    return _json;
  }
}

/// Request for notebook instances to report information to Notebooks API.
class ReportInstanceInfoRequest {
  /// The metadata reported to Notebooks API.
  ///
  /// This will be merged to the instance metadata store
  core.Map<core.String, core.String> metadata;

  /// The VM hardware token for authenticating the VM.
  ///
  /// https://cloud.google.com/compute/docs/instances/verifying-instance-identity
  ///
  /// Required.
  core.String vmId;

  ReportInstanceInfoRequest();

  ReportInstanceInfoRequest.fromJson(core.Map _json) {
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('vmId')) {
      vmId = _json['vmId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    if (vmId != null) {
      _json['vmId'] = vmId;
    }
    return _json;
  }
}

/// Request for reseting a notebook instance
class ResetInstanceRequest {
  ResetInstanceRequest();

  ResetInstanceRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// The definition of a schedule.
class Schedule {
  /// Time the schedule was created.
  ///
  /// Output only.
  core.String createTime;

  /// Cron-tab formatted schedule by which the job will execute Format: minute,
  /// hour, day of month, month, day of week e.g. 0 0 * * WED = every Wednesday
  /// More examples: https://crontab.guru/examples.html
  core.String cronSchedule;

  /// A brief description of this environment.
  core.String description;

  /// Display name used for UI purposes.
  ///
  /// Name can only contain alphanumeric characters, hyphens ‘-’, and
  /// underscores ‘_’.
  ///
  /// Output only.
  core.String displayName;

  /// Notebook Execution Template corresponding to this schedule.
  ExecutionTemplate executionTemplate;

  /// The name of this schedule.
  ///
  /// Format:
  /// `projects/{project_id}/locations/{location}/schedules/{schedule_id}`
  ///
  /// Output only.
  core.String name;

  ///
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "ENABLED" : The job is executing normally.
  /// - "PAUSED" : The job is paused by the user. It will not execute. A user
  /// can intentionally pause the job using PauseJobRequest.
  /// - "DISABLED" : The job is disabled by the system due to error. The user
  /// cannot directly set a job to be disabled.
  /// - "UPDATE_FAILED" : The job state resulting from a failed
  /// CloudScheduler.UpdateJob operation. To recover a job from this state,
  /// retry CloudScheduler.UpdateJob until a successful response is received.
  core.String state;

  /// Timezone on which the cron_schedule.
  ///
  /// The value of this field must be a time zone name from the tz database. TZ
  /// Database: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
  /// Note that some time zones include a provision for daylight savings time.
  /// The rules for daylight saving time are determined by the chosen tz. For
  /// UTC use the string "utc". If a time zone is not specified, the default
  /// will be in UTC (also known as GMT).
  core.String timeZone;

  /// TIme the schedule was last updated.
  ///
  /// Output only.
  core.String updateTime;

  Schedule();

  Schedule.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('cronSchedule')) {
      cronSchedule = _json['cronSchedule'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('executionTemplate')) {
      executionTemplate = ExecutionTemplate.fromJson(
          _json['executionTemplate'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('timeZone')) {
      timeZone = _json['timeZone'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (cronSchedule != null) {
      _json['cronSchedule'] = cronSchedule;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (executionTemplate != null) {
      _json['executionTemplate'] = executionTemplate.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (timeZone != null) {
      _json['timeZone'] = timeZone;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// Definition of a hardware accelerator.
///
/// Note that not all combinations of `type` and `core_count` are valid. Check
/// GPUs on Compute Engine to find a valid combination. TPUs are not supported.
class SchedulerAcceleratorConfig {
  /// Count of cores of this accelerator.
  core.String coreCount;

  /// Type of this accelerator.
  /// Possible string values are:
  /// - "SCHEDULER_ACCELERATOR_TYPE_UNSPECIFIED" : Unspecified accelerator type.
  /// Default to no GPU.
  /// - "NVIDIA_TESLA_K80" : Nvidia Tesla K80 GPU.
  /// - "NVIDIA_TESLA_P100" : Nvidia Tesla P100 GPU.
  /// - "NVIDIA_TESLA_V100" : Nvidia Tesla V100 GPU.
  /// - "NVIDIA_TESLA_P4" : Nvidia Tesla P4 GPU.
  /// - "NVIDIA_TESLA_T4" : Nvidia Tesla T4 GPU.
  /// - "TPU_V2" : TPU v2.
  /// - "TPU_V3" : TPU v3.
  core.String type;

  SchedulerAcceleratorConfig();

  SchedulerAcceleratorConfig.fromJson(core.Map _json) {
    if (_json.containsKey('coreCount')) {
      coreCount = _json['coreCount'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (coreCount != null) {
      _json['coreCount'] = coreCount;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects) might
  /// reject them.
  Policy policy;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('policy')) {
      policy = Policy.fromJson(
          _json['policy'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (policy != null) {
      _json['policy'] = policy.toJson();
    }
    return _json;
  }
}

/// Request for setting instance accelerator.
class SetInstanceAcceleratorRequest {
  /// Count of cores of this accelerator.
  ///
  /// Note that not all combinations of `type` and `core_count` are valid. Check
  /// [GPUs on Compute Engine](https://cloud.google.com/compute/docs/gpus/#gpus-list)
  /// to find a valid combination. TPUs are not supported.
  ///
  /// Required.
  core.String coreCount;

  /// Type of this accelerator.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ACCELERATOR_TYPE_UNSPECIFIED" : Accelerator type is not specified.
  /// - "NVIDIA_TESLA_K80" : Accelerator type is Nvidia Tesla K80.
  /// - "NVIDIA_TESLA_P100" : Accelerator type is Nvidia Tesla P100.
  /// - "NVIDIA_TESLA_V100" : Accelerator type is Nvidia Tesla V100.
  /// - "NVIDIA_TESLA_P4" : Accelerator type is Nvidia Tesla P4.
  /// - "NVIDIA_TESLA_T4" : Accelerator type is Nvidia Tesla T4.
  /// - "NVIDIA_TESLA_A100" : Accelerator type is Nvidia Tesla A100.
  /// - "NVIDIA_TESLA_T4_VWS" : Accelerator type is NVIDIA Tesla T4 Virtual
  /// Workstations.
  /// - "NVIDIA_TESLA_P100_VWS" : Accelerator type is NVIDIA Tesla P100 Virtual
  /// Workstations.
  /// - "NVIDIA_TESLA_P4_VWS" : Accelerator type is NVIDIA Tesla P4 Virtual
  /// Workstations.
  /// - "TPU_V2" : (Coming soon) Accelerator type is TPU V2.
  /// - "TPU_V3" : (Coming soon) Accelerator type is TPU V3.
  core.String type;

  SetInstanceAcceleratorRequest();

  SetInstanceAcceleratorRequest.fromJson(core.Map _json) {
    if (_json.containsKey('coreCount')) {
      coreCount = _json['coreCount'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (coreCount != null) {
      _json['coreCount'] = coreCount;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Request for setting instance labels.
class SetInstanceLabelsRequest {
  /// Labels to apply to this instance.
  ///
  /// These can be later modified by the setLabels method
  core.Map<core.String, core.String> labels;

  SetInstanceLabelsRequest();

  SetInstanceLabelsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (labels != null) {
      _json['labels'] = labels;
    }
    return _json;
  }
}

/// Request for setting instance machine type.
class SetInstanceMachineTypeRequest {
  /// The
  /// [Compute Engine machine type](https://cloud.google.com/compute/docs/machine-types).
  ///
  /// Required.
  core.String machineType;

  SetInstanceMachineTypeRequest();

  SetInstanceMachineTypeRequest.fromJson(core.Map _json) {
    if (_json.containsKey('machineType')) {
      machineType = _json['machineType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (machineType != null) {
      _json['machineType'] = machineType;
    }
    return _json;
  }
}

/// A set of Shielded Instance options.
///
/// Check \[Images using supported Shielded VM features\] Not all combinations
/// are valid.
class ShieldedInstanceConfig {
  /// Defines whether the instance has integrity monitoring enabled.
  ///
  /// Enables monitoring and attestation of the boot integrity of the instance.
  /// The attestation is performed against the integrity policy baseline. This
  /// baseline is initially derived from the implicitly trusted boot image when
  /// the instance is created. Enabled by default.
  core.bool enableIntegrityMonitoring;

  /// Defines whether the instance has Secure Boot enabled.
  ///
  /// Secure Boot helps ensure that the system only runs authentic software by
  /// verifying the digital signature of all boot components, and halting the
  /// boot process if signature verification fails. Disabled by default.
  core.bool enableSecureBoot;

  /// Defines whether the instance has the vTPM enabled.
  ///
  /// Enabled by default.
  core.bool enableVtpm;

  ShieldedInstanceConfig();

  ShieldedInstanceConfig.fromJson(core.Map _json) {
    if (_json.containsKey('enableIntegrityMonitoring')) {
      enableIntegrityMonitoring =
          _json['enableIntegrityMonitoring'] as core.bool;
    }
    if (_json.containsKey('enableSecureBoot')) {
      enableSecureBoot = _json['enableSecureBoot'] as core.bool;
    }
    if (_json.containsKey('enableVtpm')) {
      enableVtpm = _json['enableVtpm'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (enableIntegrityMonitoring != null) {
      _json['enableIntegrityMonitoring'] = enableIntegrityMonitoring;
    }
    if (enableSecureBoot != null) {
      _json['enableSecureBoot'] = enableSecureBoot;
    }
    if (enableVtpm != null) {
      _json['enableVtpm'] = enableVtpm;
    }
    return _json;
  }
}

/// Request for starting a notebook instance
class StartInstanceRequest {
  StartInstanceRequest();

  StartInstanceRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
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
  core.int code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.int;
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.Map<core.String, core.Object>>((value) =>
              (value as core.Map).cast<core.String, core.Object>().map(
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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (code != null) {
      _json['code'] = code;
    }
    if (details != null) {
      _json['details'] = details;
    }
    if (message != null) {
      _json['message'] = message;
    }
    return _json;
  }
}

/// Request for stopping a notebook instance
class StopInstanceRequest {
  StopInstanceRequest();

  StopInstanceRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Request message for `TestIamPermissions` method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`.
  ///
  /// Permissions with wildcards (such as '*' or 'storage.*') are not allowed.
  /// For more information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String> permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (permissions != null) {
      _json['permissions'] = permissions;
    }
    return _json;
  }
}

/// Response message for `TestIamPermissions` method.
class TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String> permissions;

  TestIamPermissionsResponse();

  TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (permissions != null) {
      _json['permissions'] = permissions;
    }
    return _json;
  }
}

/// Request for created scheduled notebooks
class TriggerScheduleRequest {
  TriggerScheduleRequest();

  TriggerScheduleRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// The entry of VM image upgrade history.
class UpgradeHistoryEntry {
  /// Action.
  ///
  /// Rolloback or Upgrade.
  /// Possible string values are:
  /// - "ACTION_UNSPECIFIED" : Operation is not specified.
  /// - "UPGRADE" : Upgrade.
  /// - "ROLLBACK" : Rollback.
  core.String action;

  /// The container image before this instance upgrade.
  core.String containerImage;

  /// The time that this instance upgrade history entry is created.
  core.String createTime;

  /// The framework of this notebook instance.
  core.String framework;

  /// The snapshot of the boot disk of this notebook instance before upgrade.
  core.String snapshot;

  /// The state of this instance upgrade history entry.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State is not specified.
  /// - "STARTED" : The instance upgrade is started.
  /// - "SUCCEEDED" : The instance upgrade is succeeded.
  /// - "FAILED" : The instance upgrade is failed.
  core.String state;

  /// Target VM Image.
  ///
  /// Format: ainotebooks-vm/project/image-name/name.
  core.String targetImage;

  /// The version of the notebook instance before this upgrade.
  core.String version;

  /// The VM image before this instance upgrade.
  core.String vmImage;

  UpgradeHistoryEntry();

  UpgradeHistoryEntry.fromJson(core.Map _json) {
    if (_json.containsKey('action')) {
      action = _json['action'] as core.String;
    }
    if (_json.containsKey('containerImage')) {
      containerImage = _json['containerImage'] as core.String;
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('framework')) {
      framework = _json['framework'] as core.String;
    }
    if (_json.containsKey('snapshot')) {
      snapshot = _json['snapshot'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('targetImage')) {
      targetImage = _json['targetImage'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
    if (_json.containsKey('vmImage')) {
      vmImage = _json['vmImage'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (action != null) {
      _json['action'] = action;
    }
    if (containerImage != null) {
      _json['containerImage'] = containerImage;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (framework != null) {
      _json['framework'] = framework;
    }
    if (snapshot != null) {
      _json['snapshot'] = snapshot;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (targetImage != null) {
      _json['targetImage'] = targetImage;
    }
    if (version != null) {
      _json['version'] = version;
    }
    if (vmImage != null) {
      _json['vmImage'] = vmImage;
    }
    return _json;
  }
}

/// Request for upgrading a notebook instance from within the VM
class UpgradeInstanceInternalRequest {
  /// The VM hardware token for authenticating the VM.
  ///
  /// https://cloud.google.com/compute/docs/instances/verifying-instance-identity
  ///
  /// Required.
  core.String vmId;

  UpgradeInstanceInternalRequest();

  UpgradeInstanceInternalRequest.fromJson(core.Map _json) {
    if (_json.containsKey('vmId')) {
      vmId = _json['vmId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (vmId != null) {
      _json['vmId'] = vmId;
    }
    return _json;
  }
}

/// Request for upgrading a notebook instance
class UpgradeInstanceRequest {
  UpgradeInstanceRequest();

  UpgradeInstanceRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Definition of a custom Compute Engine virtual machine image for starting a
/// notebook instance with the environment installed directly on the VM.
class VmImage {
  /// Use this VM image family to find the image; the newest image in this
  /// family will be used.
  core.String imageFamily;

  /// Use VM image name to find the image.
  core.String imageName;

  /// The name of the Google Cloud project that this VM image belongs to.
  ///
  /// Format: `projects/{project_id}`
  ///
  /// Required.
  core.String project;

  VmImage();

  VmImage.fromJson(core.Map _json) {
    if (_json.containsKey('imageFamily')) {
      imageFamily = _json['imageFamily'] as core.String;
    }
    if (_json.containsKey('imageName')) {
      imageName = _json['imageName'] as core.String;
    }
    if (_json.containsKey('project')) {
      project = _json['project'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (imageFamily != null) {
      _json['imageFamily'] = imageFamily;
    }
    if (imageName != null) {
      _json['imageName'] = imageName;
    }
    if (project != null) {
      _json['project'] = project;
    }
    return _json;
  }
}
