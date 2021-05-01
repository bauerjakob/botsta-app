// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatrooms.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetChatroomsVars> _$gGetChatroomsVarsSerializer =
    new _$GGetChatroomsVarsSerializer();

class _$GGetChatroomsVarsSerializer
    implements StructuredSerializer<GGetChatroomsVars> {
  @override
  final Iterable<Type> types = const [GGetChatroomsVars, _$GGetChatroomsVars];
  @override
  final String wireName = 'GGetChatroomsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetChatroomsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetChatroomsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetChatroomsVarsBuilder().build();
  }
}

class _$GGetChatroomsVars extends GGetChatroomsVars {
  factory _$GGetChatroomsVars(
          [void Function(GGetChatroomsVarsBuilder)? updates]) =>
      (new GGetChatroomsVarsBuilder()..update(updates)).build();

  _$GGetChatroomsVars._() : super._();

  @override
  GGetChatroomsVars rebuild(void Function(GGetChatroomsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetChatroomsVarsBuilder toBuilder() =>
      new GGetChatroomsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetChatroomsVars;
  }

  @override
  int get hashCode {
    return 319178680;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GGetChatroomsVars').toString();
  }
}

class GGetChatroomsVarsBuilder
    implements Builder<GGetChatroomsVars, GGetChatroomsVarsBuilder> {
  _$GGetChatroomsVars? _$v;

  GGetChatroomsVarsBuilder();

  @override
  void replace(GGetChatroomsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetChatroomsVars;
  }

  @override
  void update(void Function(GGetChatroomsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetChatroomsVars build() {
    final _$result = _$v ?? new _$GGetChatroomsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
