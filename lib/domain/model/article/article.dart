import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:newspaper_viewer/domain/model/article/multimedia.dart';

part 'article.g.dart';

abstract class Article implements Built<Article, ArticleBuilder> {
  Article._();
  factory Article([void Function(ArticleBuilder) updates]) = _$Article;

  static Serializer<Article> get serializer => _$articleSerializer;

  @BuiltValueField(wireName: "title")
  @nullable
  String get title;

  @BuiltValueField(wireName: "abstract")
  @nullable
  String get introText;

  @BuiltValueField(wireName: "url")
  @nullable
  String get url;

  @BuiltValueField(wireName: "multimedia")
  @nullable
  BuiltList<Multimedia> get multimedia;
}
