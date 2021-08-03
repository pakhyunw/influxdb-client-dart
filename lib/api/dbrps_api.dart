//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;


class DBRPsApi {
  DBRPsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete a database retention policy
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dbrpID (required):
  ///   The database retention policy mapping
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] orgID:
  ///   Specifies the organization ID of the mapping
  ///
  /// * [String] org:
  ///   Specifies the organization name of the mapping
  Future<Response> deleteDBRPIDWithHttpInfo(String dbrpID, { String zapTraceSpan, String orgID, String org }) async {
    // Verify required params are set.
    if (dbrpID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: dbrpID');
    }

    final path = r'/dbrps/{dbrpID}'
      .replaceAll('{' + 'dbrpID' + '}', dbrpID.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (orgID != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'orgID', orgID));
    }
    if (org != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'org', org));
    }

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Delete a database retention policy
  ///
  /// Parameters:
  ///
  /// * [String] dbrpID (required):
  ///   The database retention policy mapping
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] orgID:
  ///   Specifies the organization ID of the mapping
  ///
  /// * [String] org:
  ///   Specifies the organization name of the mapping
  Future<void> deleteDBRPID(String dbrpID, { String zapTraceSpan, String orgID, String org }) async {
    final response = await deleteDBRPIDWithHttpInfo(dbrpID,  zapTraceSpan: zapTraceSpan, orgID: orgID, org: org );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// List all database retention policy mappings
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] orgID:
  ///   Specifies the organization ID to filter on
  ///
  /// * [String] org:
  ///   Specifies the organization name to filter on
  ///
  /// * [String] id:
  ///   Specifies the mapping ID to filter on
  ///
  /// * [String] bucketID:
  ///   Specifies the bucket ID to filter on
  ///
  /// * [bool] default_:
  ///   Specifies filtering on default
  ///
  /// * [String] db:
  ///   Specifies the database to filter on
  ///
  /// * [String] rp:
  ///   Specifies the retention policy to filter on
  Future<Response> getDBRPsWithHttpInfo({ String zapTraceSpan, String orgID, String org, String id, String bucketID, bool default_, String db, String rp }) async {
    // Verify required params are set.

    final path = r'/dbrps';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (orgID != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'orgID', orgID));
    }
    if (org != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'org', org));
    }
    if (id != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'id', id));
    }
    if (bucketID != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'bucketID', bucketID));
    }
    if (default_ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'default', default_));
    }
    if (db != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'db', db));
    }
    if (rp != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'rp', rp));
    }

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// List all database retention policy mappings
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] orgID:
  ///   Specifies the organization ID to filter on
  ///
  /// * [String] org:
  ///   Specifies the organization name to filter on
  ///
  /// * [String] id:
  ///   Specifies the mapping ID to filter on
  ///
  /// * [String] bucketID:
  ///   Specifies the bucket ID to filter on
  ///
  /// * [bool] default_:
  ///   Specifies filtering on default
  ///
  /// * [String] db:
  ///   Specifies the database to filter on
  ///
  /// * [String] rp:
  ///   Specifies the retention policy to filter on
  Future<DBRPs> getDBRPs({ String zapTraceSpan, String orgID, String org, String id, String bucketID, bool default_, String db, String rp }) async {
    final response = await getDBRPsWithHttpInfo( zapTraceSpan: zapTraceSpan, orgID: orgID, org: org, id: id, bucketID: bucketID, default_: default_, db: db, rp: rp );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DBRPs') as DBRPs;
        }
    return Future<DBRPs>.value(null);
  }

  /// Retrieve a database retention policy mapping
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dbrpID (required):
  ///   The database retention policy mapping ID
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] orgID:
  ///   Specifies the organization ID of the mapping
  ///
  /// * [String] org:
  ///   Specifies the organization name of the mapping
  Future<Response> getDBRPsIDWithHttpInfo(String dbrpID, { String zapTraceSpan, String orgID, String org }) async {
    // Verify required params are set.
    if (dbrpID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: dbrpID');
    }

    final path = r'/dbrps/{dbrpID}'
      .replaceAll('{' + 'dbrpID' + '}', dbrpID.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (orgID != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'orgID', orgID));
    }
    if (org != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'org', org));
    }

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Retrieve a database retention policy mapping
  ///
  /// Parameters:
  ///
  /// * [String] dbrpID (required):
  ///   The database retention policy mapping ID
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] orgID:
  ///   Specifies the organization ID of the mapping
  ///
  /// * [String] org:
  ///   Specifies the organization name of the mapping
  Future<DBRPGet> getDBRPsID(String dbrpID, { String zapTraceSpan, String orgID, String org }) async {
    final response = await getDBRPsIDWithHttpInfo(dbrpID,  zapTraceSpan: zapTraceSpan, orgID: orgID, org: org );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DBRPGet') as DBRPGet;
        }
    return Future<DBRPGet>.value(null);
  }

  /// Update a database retention policy mapping
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dbrpID (required):
  ///   The database retention policy mapping.
  ///
  /// * [DBRPUpdate] dBRPUpdate (required):
  ///   Database retention policy update to apply
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] orgID:
  ///   Specifies the organization ID of the mapping
  ///
  /// * [String] org:
  ///   Specifies the organization name of the mapping
  Future<Response> patchDBRPIDWithHttpInfo(String dbrpID, DBRPUpdate dBRPUpdate, { String zapTraceSpan, String orgID, String org }) async {
    // Verify required params are set.
    if (dbrpID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: dbrpID');
    }
    if (dBRPUpdate == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: dBRPUpdate');
    }

    final path = r'/dbrps/{dbrpID}'
      .replaceAll('{' + 'dbrpID' + '}', dbrpID.toString());

    Object postBody = dBRPUpdate;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (orgID != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'orgID', orgID));
    }
    if (org != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'org', org));
    }

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Update a database retention policy mapping
  ///
  /// Parameters:
  ///
  /// * [String] dbrpID (required):
  ///   The database retention policy mapping.
  ///
  /// * [DBRPUpdate] dBRPUpdate (required):
  ///   Database retention policy update to apply
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] orgID:
  ///   Specifies the organization ID of the mapping
  ///
  /// * [String] org:
  ///   Specifies the organization name of the mapping
  Future<DBRPGet> patchDBRPID(String dbrpID, DBRPUpdate dBRPUpdate, { String zapTraceSpan, String orgID, String org }) async {
    final response = await patchDBRPIDWithHttpInfo(dbrpID, dBRPUpdate,  zapTraceSpan: zapTraceSpan, orgID: orgID, org: org );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DBRPGet') as DBRPGet;
        }
    return Future<DBRPGet>.value(null);
  }

  /// Add a database retention policy mapping
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DBRPCreate] dBRPCreate (required):
  ///   The database retention policy mapping to add
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postDBRPWithHttpInfo(DBRPCreate dBRPCreate, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (dBRPCreate == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: dBRPCreate');
    }

    final path = r'/dbrps';

    Object postBody = dBRPCreate;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Add a database retention policy mapping
  ///
  /// Parameters:
  ///
  /// * [DBRPCreate] dBRPCreate (required):
  ///   The database retention policy mapping to add
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<DBRP> postDBRP(DBRPCreate dBRPCreate, { String zapTraceSpan }) async {
    final response = await postDBRPWithHttpInfo(dBRPCreate,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DBRP') as DBRP;
        }
    return Future<DBRP>.value(null);
  }
}