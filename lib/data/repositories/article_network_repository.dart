import 'package:newspaper_viewer/data/utils/api_builder.dart';
import 'package:newspaper_viewer/data/utils/error_mapper.dart';
import 'package:newspaper_viewer/domain/model/article/article.dart';
import 'package:newspaper_viewer/domain/repository/article_repository.dart';

class ArticleNetworkRepository implements ArticleRepository {
  @override
  Future<Iterable<Article>> fetchArticles() async {
    try {
      final api = ApiBuilder().getNewsApi();
      var response = await api.fetchArticles();
      return response.data;
    } catch (error) {
      throw mapToErrorModel(error);
    }
  }
}
