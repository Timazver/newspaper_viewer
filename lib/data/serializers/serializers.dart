library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:newspaper_viewer/domain/model/article/article.dart';
import 'package:newspaper_viewer/domain/model/article/multimedia.dart';
import 'package:newspaper_viewer/domain/model/common/error_model.dart';

part 'serializers.g.dart';

@SerializersFor([
  Article,
  ErrorModel,
  Multimedia
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

T deserialize<T>(dynamic value) =>
    serializers.deserializeWith<T>(serializers.serializerForType(T), value);

BuiltList<T> deserializeListOf<T>(dynamic value) => BuiltList.from(
    value.map((value) => deserialize<T>(value)).toList(growable: false));
