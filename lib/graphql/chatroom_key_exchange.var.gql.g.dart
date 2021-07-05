// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatroom_key_exchange.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GChatroomKeyExchangeVars> _$gChatroomKeyExchangeVarsSerializer =
    new _$GChatroomKeyExchangeVarsSerializer();

class _$GChatroomKeyExchangeVarsSerializer
    implements StructuredSerializer<GChatroomKeyExchangeVars> {
  @override
  final Iterable<Type> types = const [
    GChatroomKeyExchangeVars,
    _$GChatroomKeyExchangeVars
  ];
  @override
  final String wireName = 'GChatroomKeyExchangeVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GChatroomKeyExchangeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.chatroomId;
    if (value != null) {
      result
        ..add('chatroomId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GChatroomKeyExchangeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GChatroomKeyExchangeVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'chatroomId':
          result.chatroomId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GChatroomKeyExchangeVars extends GChatroomKeyExchangeVars {
  @override
  final String? chatroomId;

  factory _$GChatroomKeyExchangeVars(
          [void Function(GChatroomKeyExchangeVarsBuilder)? updates]) =>
      (new GChatroomKeyExchangeVarsBuilder()..update(updates)).build();

  _$GChatroomKeyExchangeVars._({this.chatroomId}) : super._();

  @override
  GChatroomKeyExchangeVars rebuild(
          void Function(GChatroomKeyExchangeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GChatroomKeyExchangeVarsBuilder toBuilder() =>
      new GChatroomKeyExchangeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChatroomKeyExchangeVars && chatroomId == other.chatroomId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, chatroomId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GChatroomKeyExchangeVars')
          ..add('chatroomId', chatroomId))
        .toString();
  }
}

class GChatroomKeyExchangeVarsBuilder
    implements
        Builder<GChatroomKeyExchangeVars, GChatroomKeyExchangeVarsBuilder> {
  _$GChatroomKeyExchangeVars? _$v;

  String? _chatroomId;
  String? get chatroomId => _$this._chatroomId;
  set chatroomId(String? chatroomId) => _$this._chatroomId = chatroomId;

  GChatroomKeyExchangeVarsBuilder();

  GChatroomKeyExchangeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _chatroomId = $v.chatroomId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChatroomKeyExchangeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GChatroomKeyExchangeVars;
  }

  @override
  void update(void Function(GChatroomKeyExchangeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GChatroomKeyExchangeVars build() {
    final _$result =
        _$v ?? new _$GChatroomKeyExchangeVars._(chatroomId: chatroomId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
