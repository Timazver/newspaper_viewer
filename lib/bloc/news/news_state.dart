import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:newspaper_viewer/domain/common/async_field.dart';
import 'package:newspaper_viewer/domain/model/article/article.dart';

part 'news_state.g.dart';

abstract class NewsState implements Built<NewsState, NewsStateBuilder> {
  NewsState._();
  factory NewsState([void Function(NewsStateBuilder) updates]) = _$NewsState;

  static Serializer<NewsState> get serializer => _$newsStateSerializer;

  @nullable
  AsyncField<Iterable<Article>> get articles;
}
