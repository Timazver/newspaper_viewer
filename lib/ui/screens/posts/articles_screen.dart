import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newspaper_viewer/bloc/news/news_cubit.dart';
import 'package:newspaper_viewer/bloc/news/news_state.dart';
import 'package:newspaper_viewer/ui/components/box.dart';
import 'package:newspaper_viewer/ui/screens/posts/article_detail_screen.dart';
import 'package:newspaper_viewer/ui/screens/posts/articles_list_item.dart';

class ArticlesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        if (state.articles?.payload != null) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView.separated(
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ArticleDetailScreen(
                              state.articles?.payload?.elementAt(index)))),
                  child:
                      ArticleListItem(state.articles.payload.elementAt(index))),
              separatorBuilder: (context, index) => const HBox(10),
              itemCount: state.articles.payload.length,
            ),
          );
        } else if (state.articles?.payload?.isEmpty == true) {
          return Center(
            child: Text(
              "Ничего не найдено",
            ),
          );
        } else if (state.articles?.hasError == true) {
          return Center(
            child: Text(state.articles?.error?.message),
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
