import 'dart:convert';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:flutter/foundation.dart';
import 'package:newspaper_viewer/data/serializers/serializers.dart';

const applicationJsonHeader = 'application/json';
const enableDetailedErrorsHeader = r'Enable-Detailed-Errors';

class HttpMethod {
  static const get = 'GET';
  static const post = 'POST';
  static const put = 'PUT';
  static const patch = 'PATCH';
  static const delete = 'DELETE';
}

// оборачиваем и получаем нужные
Options wrapCacheOptions(String path,
    {Duration maxStale,
    String primaryKey,
    String subKey,
    Options options,
    bool forceRefresh}) {
  return buildConfigurableCacheOptions(
      maxAge: Duration(days: 7),
      options: options,
      primaryKey: primaryKey,
      subKey: subKey,
      maxStale: maxStale,
      forceRefresh: forceRefresh);
}

/// Format the given parameter object into string.
String parameterToString(Serializers serializers, dynamic value) {
  if (value == null) {
    return '';
  } else if (value is String || value is num) {
    return value.toString();
  } else {
    return json.encode(serializers.serialize(value));
  }
}

Response<T> mapResponse<T>(Response<dynamic> response, {dynamic data}) {
  var _data;
  if (data != null) {
    _data = data;
  } else {
    _data =
        response.data is String ? json.decode(response.data) : response.data;
  }
  return Response<T>(
    data: deserialize<T>(_data),
    headers: response.headers,
    request: response.request,
    redirects: response.redirects,
    statusCode: response.statusCode,
    statusMessage: response.statusMessage,
    extra: response.extra,
  );
}

//dataKey - key to data source if it is not root
Future<Response<List<T>>> mapListResponse<T>(Response<dynamic> response,
    {dynamic data}) async {
  var _data;
  if (data != null) {
    _data = data;
  } else {
    response.data is String ? json.decode(response.data) : response.data;
  }

  final type = serializers.serializerForType(T);
  final map = {'type': type, 'data': _data};
  final d = await compute(deserializeListCompute, map);
  return Response<List<T>>(
    data: List.castFrom<dynamic, T>(d),
    headers: response.headers,
    request: response.request,
    redirects: response.redirects,
    statusCode: response.statusCode,
    statusMessage: response.statusMessage,
    extra: response.extra,
  );
}

Iterable deserializeListCompute(dynamic map) {
  final _result = [];
  for (var i = 0; i < map['data'].length; ++i) {
    final s =
        serializers.deserializeWith(map['type'], map['data'].elementAt(i));
    _result.add(s);
  }
  return _result;
}
