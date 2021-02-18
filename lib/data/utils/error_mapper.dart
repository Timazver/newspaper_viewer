import 'package:dio/dio.dart';
import 'package:newspaper_viewer/domain/model/common/error_model.dart';

ErrorModel mapToErrorModel(error) {
  if (error is ErrorModel) {
    return error;
  }

  if (error is DioError) {
    
    return ErrorModel((e) {
      e.message = 'Что-то пошло не так...';
      e.code = '${error.response?.statusCode}';
      e.details = '${error.response?.statusMessage}';
    });
  }


  return ErrorModel((e) {
    e.message = 'Что-то пошло не так...';
    e.details = '${error}';
  });
}
