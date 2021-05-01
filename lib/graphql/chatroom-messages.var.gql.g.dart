// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatroom-messages.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetChatroomMessagesVars> _$gGetChatroomMessagesVarsSerializer =
    new _$GGetChatroomMessagesVarsSerializer();

class _$GGetChatroomMessagesVarsSerializer
    implements StructuredSerializer<GGetChatroomMessagesVars> {
  @override
  final Iterable<Type> types = const [
    GGetChatroomMessagesVars,
    _$GGetChatroomMessagesVars
  ];
  @override
  final String wireName = 'GGetChatroomMessagesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetChatroomMessagesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'chatroomId',
      serializers.serialize(object.chatroomId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetChatroomMessagesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetChatroomMessagesVarsBuilder();

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

class _$GGetChatroomMessagesVars extends GGetChatroomMessagesVars {
  @override
  final String chatroomId;

  factory _$GGetChatroomMessagesVars(
          [void Function(GGetChatroomMessagesVarsBuilder)? updates]) =>
      (new GGetChatroomMessagesVarsBuilder()..update(updates)).build();

  _$GGetChatroomMessagesVars._({required this.chatroomId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        chatroomId, 'GGetChatroomMessagesVars', 'chatroomId');
  }

  @override
  GGetChatroomMessagesVars rebuild(
          void Function(GGetChatroomMessagesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetChatroomMessagesVarsBuilder toBuilder() =>
      new GGetChatroomMessagesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetChatroomMessagesVars && chatroomId == other.chatroomId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, chatroomId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetChatroomMessagesVars')
          ..add('chatroomId', chatroomId))
        .toString();
  }
}

class GGetChatroomMessagesVarsBuilder
    implements
        Builder<GGetChatroomMessagesVars, GGetChatroomMessagesVarsBuilder> {
  _$GGetChatroomMessagesVars? _$v;

  String? _chatroomId;
  String? get chatroomId => _$this._chatroomId;
  set chatroomId(String? chatroomId) => _$this._chatroomId = chatroomId;

  GGetChatroomMessagesVarsBuilder();

  GGetChatroomMessagesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _chatroomId = $v.chatroomId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetChatroomMessagesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetChatroomMessagesVars;
  }

  @override
  void update(void Function(GGetChatroomMessagesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetChatroomMessagesVars build() {
    final _$result = _$v ??
        new _$GGetChatroomMessagesVars._(
            chatroomId: BuiltValueNullFieldError.checkNotNull(
                chatroomId, 'GGetChatroomMessagesVars', 'chatroomId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
