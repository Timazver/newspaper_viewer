import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'multimedia.g.dart';

abstract class Multimedia implements Built<Multimedia, MultimediaBuilder> {
  Multimedia._();
  factory Multimedia([void Function(MultimediaBuilder) updates]) = _$Multimedia;

  static Serializer<Multimedia> get serializer => _$multimediaSerializer;

  @BuiltValueField(wireName: "url")
  @nullable
  String get url;

  @BuiltValueField(wireName: "format")
  @nullable
  String get format;
}
