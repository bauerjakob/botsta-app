// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_chat_practicants.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetAllChatPracticantsVars> _$gGetAllChatPracticantsVarsSerializer =
    new _$GGetAllChatPracticantsVarsSerializer();

class _$GGetAllChatPracticantsVarsSerializer
    implements StructuredSerializer<GGetAllChatPracticantsVars> {
  @override
  final Iterable<Type> types = const [
    GGetAllChatPracticantsVars,
    _$GGetAllChatPracticantsVars
  ];
  @override
  final String wireName = 'GGetAllChatPracticantsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetAllChatPracticantsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetAllChatPracticantsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetAllChatPracticantsVarsBuilder().build();
  }
}

class _$GGetAllChatPracticantsVars extends GGetAllChatPracticantsVars {
  factory _$GGetAllChatPracticantsVars(
          [void Function(GGetAllChatPracticantsVarsBuilder)? updates]) =>
      (new GGetAllChatPracticantsVarsBuilder()..update(updates)).build();

  _$GGetAllChatPracticantsVars._() : super._();

  @override
  GGetAllChatPracticantsVars rebuild(
          void Function(GGetAllChatPracticantsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAllChatPracticantsVarsBuilder toBuilder() =>
      new GGetAllChatPracticantsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAllChatPracticantsVars;
  }

  @override
  int get hashCode {
    return 658774841;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GGetAllChatPracticantsVars').toString();
  }
}

class GGetAllChatPracticantsVarsBuilder
    implements
        Builder<GGetAllChatPracticantsVars, GGetAllChatPracticantsVarsBuilder> {
  _$GGetAllChatPracticantsVars? _$v;

  GGetAllChatPracticantsVarsBuilder();

  @override
  void replace(GGetAllChatPracticantsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAllChatPracticantsVars;
  }

  @override
  void update(void Function(GGetAllChatPracticantsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetAllChatPracticantsVars build() {
    final _$result = _$v ?? new _$GGetAllChatPracticantsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
