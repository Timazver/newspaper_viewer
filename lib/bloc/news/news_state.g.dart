// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NewsState> _$newsStateSerializer = new _$NewsStateSerializer();

class _$NewsStateSerializer implements StructuredSerializer<NewsState> {
  @override
  final Iterable<Type> types = const [NewsState, _$NewsState];
  @override
  final String wireName = 'NewsState';

  @override
  Iterable<Object> serialize(Serializers serializers, NewsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.articles != null) {
      result
        ..add('articles')
        ..add(serializers.serialize(object.articles,
            specifiedType: const FullType(AsyncField, const [
              const FullType(Iterable, const [const FullType(Article)])
            ])));
    }
    return result;
  }

  @override
  NewsState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'articles':
          result.articles.replace(serializers.deserialize(value,
              specifiedType: const FullType(AsyncField, const [
                const FullType(Iterable, const [const FullType(Article)])
              ])) as AsyncField<Iterable<Article>>);
          break;
      }
    }

    return result.build();
  }
}

class _$NewsState extends NewsState {
  @override
  final AsyncField<Iterable<Article>> articles;

  factory _$NewsState([void Function(NewsStateBuilder) updates]) =>
      (new NewsStateBuilder()..update(updates)).build();

  _$NewsState._({this.articles}) : super._();

  @override
  NewsState rebuild(void Function(NewsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsStateBuilder toBuilder() => new NewsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsState && articles == other.articles;
  }

  @override
  int get hashCode {
    return $jf($jc(0, articles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NewsState')..add('articles', articles))
        .toString();
  }
}

class NewsStateBuilder implements Builder<NewsState, NewsStateBuilder> {
  _$NewsState _$v;

  AsyncFieldBuilder<Iterable<Article>> _articles;
  AsyncFieldBuilder<Iterable<Article>> get articles =>
      _$this._articles ??= new AsyncFieldBuilder<Iterable<Article>>();
  set articles(AsyncFieldBuilder<Iterable<Article>> articles) =>
      _$this._articles = articles;

  NewsStateBuilder();

  NewsStateBuilder get _$this {
    if (_$v != null) {
      _articles = _$v.articles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NewsState;
  }

  @override
  void update(void Function(NewsStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NewsState build() {
    _$NewsState _$result;
    try {
      _$result = _$v ?? new _$NewsState._(articles: _articles?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'articles';
        _articles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NewsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
