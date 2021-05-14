// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_users.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetAllUsersVars> _$gGetAllUsersVarsSerializer =
    new _$GGetAllUsersVarsSerializer();

class _$GGetAllUsersVarsSerializer
    implements StructuredSerializer<GGetAllUsersVars> {
  @override
  final Iterable<Type> types = const [GGetAllUsersVars, _$GGetAllUsersVars];
  @override
  final String wireName = 'GGetAllUsersVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetAllUsersVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetAllUsersVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetAllUsersVarsBuilder().build();
  }
}

class _$GGetAllUsersVars extends GGetAllUsersVars {
  factory _$GGetAllUsersVars(
          [void Function(GGetAllUsersVarsBuilder)? updates]) =>
      (new GGetAllUsersVarsBuilder()..update(updates)).build();

  _$GGetAllUsersVars._() : super._();

  @override
  GGetAllUsersVars rebuild(void Function(GGetAllUsersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAllUsersVarsBuilder toBuilder() =>
      new GGetAllUsersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAllUsersVars;
  }

  @override
  int get hashCode {
    return 412192629;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GGetAllUsersVars').toString();
  }
}

class GGetAllUsersVarsBuilder
    implements Builder<GGetAllUsersVars, GGetAllUsersVarsBuilder> {
  _$GGetAllUsersVars? _$v;

  GGetAllUsersVarsBuilder();

  @override
  void replace(GGetAllUsersVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAllUsersVars;
  }

  @override
  void update(void Function(GGetAllUsersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetAllUsersVars build() {
    final _$result = _$v ?? new _$GGetAllUsersVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
