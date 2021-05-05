// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh-token.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRefresthTokenVars> _$gRefresthTokenVarsSerializer =
    new _$GRefresthTokenVarsSerializer();

class _$GRefresthTokenVarsSerializer
    implements StructuredSerializer<GRefresthTokenVars> {
  @override
  final Iterable<Type> types = const [GRefresthTokenVars, _$GRefresthTokenVars];
  @override
  final String wireName = 'GRefresthTokenVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRefresthTokenVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GRefresthTokenVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GRefresthTokenVarsBuilder().build();
  }
}

class _$GRefresthTokenVars extends GRefresthTokenVars {
  factory _$GRefresthTokenVars(
          [void Function(GRefresthTokenVarsBuilder)? updates]) =>
      (new GRefresthTokenVarsBuilder()..update(updates)).build();

  _$GRefresthTokenVars._() : super._();

  @override
  GRefresthTokenVars rebuild(
          void Function(GRefresthTokenVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRefresthTokenVarsBuilder toBuilder() =>
      new GRefresthTokenVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRefresthTokenVars;
  }

  @override
  int get hashCode {
    return 370736789;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GRefresthTokenVars').toString();
  }
}

class GRefresthTokenVarsBuilder
    implements Builder<GRefresthTokenVars, GRefresthTokenVarsBuilder> {
  _$GRefresthTokenVars? _$v;

  GRefresthTokenVarsBuilder();

  @override
  void replace(GRefresthTokenVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRefresthTokenVars;
  }

  @override
  void update(void Function(GRefresthTokenVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRefresthTokenVars build() {
    final _$result = _$v ?? new _$GRefresthTokenVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
