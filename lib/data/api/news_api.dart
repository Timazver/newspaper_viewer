import 'package:dio/dio.dart';
import 'package:newspaper_viewer/app/app_config.dart';
import 'package:newspaper_viewer/data/utils/api_util.dart';
import 'package:newspaper_viewer/domain/model/article/article.dart';

class NewsApi {
  NewsApi(this._dio);

  final Dio _dio;

  Future<Response<Iterable<Article>>> fetchArticles(
      {CancelToken cancelToken, Map<String, String> headers}) {
    final _path = '/home.json';

    final queryParams = <String, dynamic>{"api-key": AppConfig.apiKey};
    final headerParams = Map<String, String>.from(headers ?? {});
    dynamic bodyData;
    headerParams.removeWhere((key, value) => value == null);

    return _dio
        .request(_path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
              method: HttpMethod.get,
              headers: headerParams,
              contentType: applicationJsonHeader,
            ),
            cancelToken: cancelToken)
        .then((response) {
      return mapListResponse<Article>(response, data: response.data["results"]);
    });
  }
}
