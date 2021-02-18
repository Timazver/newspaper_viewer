import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newspaper_viewer/domain/model/article/article.dart';
import 'package:newspaper_viewer/ui/components/box.dart';
import 'package:newspaper_viewer/ui/styles/text_styles.dart';

class ArticleListItem extends StatelessWidget {
  const ArticleListItem(this.item);

  final Article item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
            aspectRatio: 344 / 162,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image:
                          CachedNetworkImageProvider(item.multimedia.first.url),
                      fit: BoxFit.fill)),
            )),
        const HBox(10),
        Text(item.title, style: title),
        const HBox(5),
        Text(item.introText, style: subtitle)
      ],
    );
  }
}
