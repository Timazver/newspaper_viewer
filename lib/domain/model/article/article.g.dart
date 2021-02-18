// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Article> _$articleSerializer = new _$ArticleSerializer();

class _$ArticleSerializer implements StructuredSerializer<Article> {
  @override
  final Iterable<Type> types = const [Article, _$Article];
  @override
  final String wireName = 'Article';

  @override
  Iterable<Object> serialize(Serializers serializers, Article object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.introText != null) {
      result
        ..add('abstract')
        ..add(serializers.serialize(object.introText,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.multimedia != null) {
      result
        ..add('multimedia')
        ..add(serializers.serialize(object.multimedia,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Multimedia)])));
    }
    return result;
  }

  @override
  Article deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArticleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'abstract':
          result.introText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'multimedia':
          result.multimedia.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Multimedia)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Article extends Article {
  @override
  final String title;
  @override
  final String introText;
  @override
  final String url;
  @override
  final BuiltList<Multimedia> multimedia;

  factory _$Article([void Function(ArticleBuilder) updates]) =>
      (new ArticleBuilder()..update(updates)).build();

  _$Article._({this.title, this.introText, this.url, this.multimedia})
      : super._();

  @override
  Article rebuild(void Function(ArticleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleBuilder toBuilder() => new ArticleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Article &&
        title == other.title &&
        introText == other.introText &&
        url == other.url &&
        multimedia == other.multimedia;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, title.hashCode), introText.hashCode), url.hashCode),
        multimedia.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Article')
          ..add('title', title)
          ..add('introText', introText)
          ..add('url', url)
          ..add('multimedia', multimedia))
        .toString();
  }
}

class ArticleBuilder implements Builder<Article, ArticleBuilder> {
  _$Article _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _introText;
  String get introText => _$this._introText;
  set introText(String introText) => _$this._introText = introText;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  ListBuilder<Multimedia> _multimedia;
  ListBuilder<Multimedia> get multimedia =>
      _$this._multimedia ??= new ListBuilder<Multimedia>();
  set multimedia(ListBuilder<Multimedia> multimedia) =>
      _$this._multimedia = multimedia;

  ArticleBuilder();

  ArticleBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _introText = _$v.introText;
      _url = _$v.url;
      _multimedia = _$v.multimedia?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Article other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Article;
  }

  @override
  void update(void Function(ArticleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Article build() {
    _$Article _$result;
    try {
      _$result = _$v ??
          new _$Article._(
              title: title,
              introText: introText,
              url: url,
              multimedia: _multimedia?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'multimedia';
        _multimedia?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Article', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
