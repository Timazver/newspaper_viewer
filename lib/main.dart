import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newspaper_viewer/bloc/news/news_cubit.dart';
import 'package:newspaper_viewer/data/repositories/article_network_repository.dart';
import 'package:newspaper_viewer/ui/screens/posts/articles_screen.dart';

void main() {
  runApp(providedApp);
}

final app = MaterialApp(
    title: 'NewspaperViewer',
    debugShowCheckedModeBanner: false,
    themeMode: ThemeMode.light,
    home: ArticlesScreen());

final providedApp = MultiBlocProvider(providers: [
  BlocProvider<NewsCubit>(
      lazy: true,
      create: (create) => NewsCubit(ArticleNetworkRepository())..init()),
], child: app);
