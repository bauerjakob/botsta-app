// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh-token.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRefreshTokenVars> _$gRefreshTokenVarsSerializer =
    new _$GRefreshTokenVarsSerializer();

class _$GRefreshTokenVarsSerializer
    implements StructuredSerializer<GRefreshTokenVars> {
  @override
  final Iterable<Type> types = const [GRefreshTokenVars, _$GRefreshTokenVars];
  @override
  final String wireName = 'GRefreshTokenVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRefreshTokenVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GRefreshTokenVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GRefreshTokenVarsBuilder().build();
  }
}

class _$GRefreshTokenVars extends GRefreshTokenVars {
  factory _$GRefreshTokenVars(
          [void Function(GRefreshTokenVarsBuilder)? updates]) =>
      (new GRefreshTokenVarsBuilder()..update(updates)).build();

  _$GRefreshTokenVars._() : super._();

  @override
  GRefreshTokenVars rebuild(void Function(GRefreshTokenVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRefreshTokenVarsBuilder toBuilder() =>
      new GRefreshTokenVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRefreshTokenVars;
  }

  @override
  int get hashCode {
    return 759434152;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GRefreshTokenVars').toString();
  }
}

class GRefreshTokenVarsBuilder
    implements Builder<GRefreshTokenVars, GRefreshTokenVarsBuilder> {
  _$GRefreshTokenVars? _$v;

  GRefreshTokenVarsBuilder();

  @override
  void replace(GRefreshTokenVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRefreshTokenVars;
  }

  @override
  void update(void Function(GRefreshTokenVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRefreshTokenVars build() {
    final _$result = _$v ?? new _$GRefreshTokenVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
