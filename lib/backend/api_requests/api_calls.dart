import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start RFP API Group Group Code

class RFPAPIGroupGroup {
  static String getBaseUrl() => 'https://rfpdemo.velsof.com/api';
  static Map<String, String> headers = {};
  static LoginAPICall loginAPICall = LoginAPICall();
  static GetAdminRFPCall getAdminRFPCall = GetAdminRFPCall();
  static GetAllCategoryCall getAllCategoryCall = GetAllCategoryCall();
  static GetVendorsByCategoryIDCall getVendorsByCategoryIDCall =
      GetVendorsByCategoryIDCall();
  static AddRFPAPICall addRFPAPICall = AddRFPAPICall();
}

class LoginAPICall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = RFPAPIGroupGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login API',
      apiUrl: '$baseUrl/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? loginApiResponse(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response''',
      ));
  int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user_id''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
}

class GetAdminRFPCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = RFPAPIGroupGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Admin RFP',
      apiUrl: '$baseUrl/rfp/all',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? rfpApiResponse(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response''',
      ));
  List? allAdminRFP(dynamic response) => getJsonField(
        response,
        r'''$.rfps''',
        true,
      ) as List?;
}

class GetAllCategoryCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = RFPAPIGroupGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get All Category',
      apiUrl: '$baseUrl/categories',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? getCategoryAPIResponse(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.response''',
      ));
  dynamic allCategories(dynamic response) => getJsonField(
        response,
        r'''$.categories''',
      );
}

class GetVendorsByCategoryIDCall {
  Future<ApiCallResponse> call({
    int? categoryId,
    String? token = '',
  }) async {
    final baseUrl = RFPAPIGroupGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Vendors By Category ID',
      apiUrl: '$baseUrl/vendorlist/$categoryId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? vendorAPIResponse(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.response''',
      ));
  List? allVendors(dynamic response) => getJsonField(
        response,
        r'''$.vendors''',
        true,
      ) as List?;
  List<int>? vendorsId(dynamic response) => (getJsonField(
        response,
        r'''$.vendors[:].user_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? vendorsName(dynamic response) => (getJsonField(
        response,
        r'''$.vendors[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? vendorsEmail(dynamic response) => (getJsonField(
        response,
        r'''$.vendors[:].email''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? vendorsMobile(dynamic response) => (getJsonField(
        response,
        r'''$.vendors[:].mobile''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? noofemployee(dynamic response) => (getJsonField(
        response,
        r'''$.vendors[:].no_of_employees''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$.vendors[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? vendorCategories(dynamic response) => (getJsonField(
        response,
        r'''$.vendors[:].categories''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AddRFPAPICall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? userId,
    String? itemName = '',
    String? rfpNo = 'X1K23',
    int? quantity,
    String? lastDate = '',
    String? minimumPrice = '',
    String? maximumPrice = '',
    int? categories,
    String? vendors = '',
    String? itemDescription = '',
  }) async {
    final baseUrl = RFPAPIGroupGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Add RFP API',
      apiUrl: '$baseUrl/createrfp',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'user_id': userId,
        'item_name': itemName,
        'rfp_no': rfpNo,
        'quantity': quantity,
        'last_date': lastDate,
        'minimum_price': minimumPrice,
        'maximum_price': maximumPrice,
        'categories': categories,
        'vendors': vendors,
        'item_description': itemDescription,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? addRfpResponse(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response''',
      ));
  List<String>? error1(dynamic response) => (getJsonField(
        response,
        r'''$.errors[0]''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? error2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errors''',
      ));
}

/// End RFP API Group Group Code

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
