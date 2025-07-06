import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Supabase Edge Functions Group Code

class SupabaseEdgeFunctionsGroup {
  static String getBaseUrl() =>
      'https://shwisoaskrnfycwgabfx.supabase.co/functions/v1/';
  static Map<String, String> headers = {};
  static DeleteUserCall deleteUserCall = DeleteUserCall();
  static PushNotificationToSuperaminCall pushNotificationToSuperaminCall =
      PushNotificationToSuperaminCall();
}

class DeleteUserCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = SupabaseEdgeFunctionsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete User',
      apiUrl: '${baseUrl}delete-user',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PushNotificationToSuperaminCall {
  Future<ApiCallResponse> call({
    String? text = '',
  }) async {
    final baseUrl = SupabaseEdgeFunctionsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Push Notification to Superamin',
      apiUrl: '${baseUrl}send-push-notification',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer <eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNod2lzb2Fza3JuZnljd2dhYmZ4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDExOTEzMjUsImV4cCI6MjA1Njc2NzMyNX0.H_S4ZFzQi_vEdb07fJhXWced5jkqe1Vc94nR6uE6Ya4>',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Supabase Edge Functions Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
