import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'error_model.g.dart';

abstract class ErrorModel implements Built<ErrorModel, ErrorModelBuilder> {
  ErrorModel._();

  factory ErrorModel([Function(ErrorModelBuilder b) updates]) = _$ErrorModel;

  static Serializer<ErrorModel> get serializer => _$errorModelSerializer;

  @BuiltValueField(wireName: 'message')
  String get message;

  @BuiltValueField(wireName: 'code')
  @nullable
  String get code;

  @nullable
  Object get details;
}
