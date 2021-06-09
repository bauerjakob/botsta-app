// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_own_bots.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetOwnBotsVars> _$gGetOwnBotsVarsSerializer =
    new _$GGetOwnBotsVarsSerializer();

class _$GGetOwnBotsVarsSerializer
    implements StructuredSerializer<GGetOwnBotsVars> {
  @override
  final Iterable<Type> types = const [GGetOwnBotsVars, _$GGetOwnBotsVars];
  @override
  final String wireName = 'GGetOwnBotsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetOwnBotsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetOwnBotsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetOwnBotsVarsBuilder().build();
  }
}

class _$GGetOwnBotsVars extends GGetOwnBotsVars {
  factory _$GGetOwnBotsVars([void Function(GGetOwnBotsVarsBuilder)? updates]) =>
      (new GGetOwnBotsVarsBuilder()..update(updates)).build();

  _$GGetOwnBotsVars._() : super._();

  @override
  GGetOwnBotsVars rebuild(void Function(GGetOwnBotsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetOwnBotsVarsBuilder toBuilder() =>
      new GGetOwnBotsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetOwnBotsVars;
  }

  @override
  int get hashCode {
    return 52018571;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GGetOwnBotsVars').toString();
  }
}

class GGetOwnBotsVarsBuilder
    implements Builder<GGetOwnBotsVars, GGetOwnBotsVarsBuilder> {
  _$GGetOwnBotsVars? _$v;

  GGetOwnBotsVarsBuilder();

  @override
  void replace(GGetOwnBotsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetOwnBotsVars;
  }

  @override
  void update(void Function(GGetOwnBotsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetOwnBotsVars build() {
    final _$result = _$v ?? new _$GGetOwnBotsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
