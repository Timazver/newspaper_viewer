import 'package:bloc/bloc.dart';
import 'package:newspaper_viewer/bloc/news/news_state.dart';
import 'package:newspaper_viewer/domain/common/async_field.dart';
import 'package:newspaper_viewer/domain/repository/article_repository.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit(this.repository) : super(NewsState());

  final ArticleRepository repository;

  void init() {
    fetchNews();
  }

  void fetchNews() async {
    try {
      emit(state.rebuild((s) => s.articles.replace(AsyncField.inProgress())));
      final articles = await repository.fetchArticles();
      emit(state
          .rebuild((s) => s.articles.replace(AsyncField.success(articles))));
    } catch (error) {
      emit(state.rebuild((s) => s.articles.replace(AsyncField.error(error))));
    }
  }
}
