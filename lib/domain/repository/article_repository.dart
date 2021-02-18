import 'package:newspaper_viewer/domain/model/article/article.dart';

abstract class ArticleRepository {
  Future<Iterable<Article>> fetchArticles();
}
