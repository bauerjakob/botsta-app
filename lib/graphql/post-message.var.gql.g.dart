// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post-message.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPostMessageVars> _$gPostMessageVarsSerializer =
    new _$GPostMessageVarsSerializer();

class _$GPostMessageVarsSerializer
    implements StructuredSerializer<GPostMessageVars> {
  @override
  final Iterable<Type> types = const [GPostMessageVars, _$GPostMessageVars];
  @override
  final String wireName = 'GPostMessageVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPostMessageVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'chatroomId',
      serializers.serialize(object.chatroomId,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'receiverSessionId',
      serializers.serialize(object.receiverSessionId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GPostMessageVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostMessageVarsBuilder();

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
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'receiverSessionId':
          result.receiverSessionId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GPostMessageVars extends GPostMessageVars {
  @override
  final String chatroomId;
  @override
  final String message;
  @override
  final String receiverSessionId;

  factory _$GPostMessageVars(
          [void Function(GPostMessageVarsBuilder)? updates]) =>
      (new GPostMessageVarsBuilder()..update(updates)).build();

  _$GPostMessageVars._(
      {required this.chatroomId,
      required this.message,
      required this.receiverSessionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        chatroomId, 'GPostMessageVars', 'chatroomId');
    BuiltValueNullFieldError.checkNotNull(
        message, 'GPostMessageVars', 'message');
    BuiltValueNullFieldError.checkNotNull(
        receiverSessionId, 'GPostMessageVars', 'receiverSessionId');
  }

  @override
  GPostMessageVars rebuild(void Function(GPostMessageVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostMessageVarsBuilder toBuilder() =>
      new GPostMessageVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostMessageVars &&
        chatroomId == other.chatroomId &&
        message == other.message &&
        receiverSessionId == other.receiverSessionId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, chatroomId.hashCode), message.hashCode),
        receiverSessionId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GPostMessageVars')
          ..add('chatroomId', chatroomId)
          ..add('message', message)
          ..add('receiverSessionId', receiverSessionId))
        .toString();
  }
}

class GPostMessageVarsBuilder
    implements Builder<GPostMessageVars, GPostMessageVarsBuilder> {
  _$GPostMessageVars? _$v;

  String? _chatroomId;
  String? get chatroomId => _$this._chatroomId;
  set chatroomId(String? chatroomId) => _$this._chatroomId = chatroomId;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _receiverSessionId;
  String? get receiverSessionId => _$this._receiverSessionId;
  set receiverSessionId(String? receiverSessionId) =>
      _$this._receiverSessionId = receiverSessionId;

  GPostMessageVarsBuilder();

  GPostMessageVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _chatroomId = $v.chatroomId;
      _message = $v.message;
      _receiverSessionId = $v.receiverSessionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostMessageVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostMessageVars;
  }

  @override
  void update(void Function(GPostMessageVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GPostMessageVars build() {
    final _$result = _$v ??
        new _$GPostMessageVars._(
            chatroomId: BuiltValueNullFieldError.checkNotNull(
                chatroomId, 'GPostMessageVars', 'chatroomId'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, 'GPostMessageVars', 'message'),
            receiverSessionId: BuiltValueNullFieldError.checkNotNull(
                receiverSessionId, 'GPostMessageVars', 'receiverSessionId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
