import 'package:dio/dio.dart';
import 'package:dio_flutter_transformer/dio_flutter_transformer.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:newspaper_viewer/app/app_config.dart';
import 'package:newspaper_viewer/data/api/news_api.dart';

class ApiBuilder {
  ApiBuilder() {
    final options = BaseOptions(
      baseUrl: AppConfig.baseUrl,
      connectTimeout: 15000,
      receiveTimeout: 7000,
    );
    _dio = Dio(options);
  }

  Dio _dio;

  NewsApi getNewsApi() => NewsApi(_dio);

  void addInterceptor(Interceptor interceptor) {
    if (_dio.interceptors.contains(interceptor)) {
      _dio.interceptors.remove(interceptor);
    }
    deleteInterceptor(interceptor.runtimeType);
    _dio.interceptors.add(interceptor);
  }

  void deleteInterceptor(Type interceptorType) {
    _dio.interceptors
        .removeWhere((element) => element.runtimeType == interceptorType);
  }
}
