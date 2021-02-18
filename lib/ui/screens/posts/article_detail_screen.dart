import 'package:flutter/material.dart';
import 'package:newspaper_viewer/domain/model/article/article.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleDetailScreen extends StatelessWidget {
  const ArticleDetailScreen(this.article);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller) {
          controller.loadUrl(article.url);
        },
      ),
    );
  }
}
