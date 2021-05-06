// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message-subscription.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMessageSubscriptionData> _$gMessageSubscriptionDataSerializer =
    new _$GMessageSubscriptionDataSerializer();
Serializer<GMessageSubscriptionData_messageReceived>
    _$gMessageSubscriptionDataMessageReceivedSerializer =
    new _$GMessageSubscriptionData_messageReceivedSerializer();

class _$GMessageSubscriptionDataSerializer
    implements StructuredSerializer<GMessageSubscriptionData> {
  @override
  final Iterable<Type> types = const [
    GMessageSubscriptionData,
    _$GMessageSubscriptionData
  ];
  @override
  final String wireName = 'GMessageSubscriptionData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMessageSubscriptionData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.messageReceived;
    if (value != null) {
      result
        ..add('messageReceived')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GMessageSubscriptionData_messageReceived)));
    }
    return result;
  }

  @override
  GMessageSubscriptionData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMessageSubscriptionDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'messageReceived':
          result.messageReceived.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GMessageSubscriptionData_messageReceived))!
              as GMessageSubscriptionData_messageReceived);
          break;
      }
    }

    return result.build();
  }
}

class _$GMessageSubscriptionData_messageReceivedSerializer
    implements StructuredSerializer<GMessageSubscriptionData_messageReceived> {
  @override
  final Iterable<Type> types = const [
    GMessageSubscriptionData_messageReceived,
    _$GMessageSubscriptionData_messageReceived
  ];
  @override
  final String wireName = 'GMessageSubscriptionData_messageReceived';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMessageSubscriptionData_messageReceived object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'chatroomId',
      serializers.serialize(object.chatroomId,
          specifiedType: const FullType(String)),
      'senderId',
      serializers.serialize(object.senderId,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GMessageSubscriptionData_messageReceived deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMessageSubscriptionData_messageReceivedBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'chatroomId':
          result.chatroomId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'senderId':
          result.senderId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GMessageSubscriptionData extends GMessageSubscriptionData {
  @override
  final String G__typename;
  @override
  final GMessageSubscriptionData_messageReceived? messageReceived;

  factory _$GMessageSubscriptionData(
          [void Function(GMessageSubscriptionDataBuilder)? updates]) =>
      (new GMessageSubscriptionDataBuilder()..update(updates)).build();

  _$GMessageSubscriptionData._(
      {required this.G__typename, this.messageReceived})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GMessageSubscriptionData', 'G__typename');
  }

  @override
  GMessageSubscriptionData rebuild(
          void Function(GMessageSubscriptionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMessageSubscriptionDataBuilder toBuilder() =>
      new GMessageSubscriptionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMessageSubscriptionData &&
        G__typename == other.G__typename &&
        messageReceived == other.messageReceived;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), messageReceived.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GMessageSubscriptionData')
          ..add('G__typename', G__typename)
          ..add('messageReceived', messageReceived))
        .toString();
  }
}

class GMessageSubscriptionDataBuilder
    implements
        Builder<GMessageSubscriptionData, GMessageSubscriptionDataBuilder> {
  _$GMessageSubscriptionData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GMessageSubscriptionData_messageReceivedBuilder? _messageReceived;
  GMessageSubscriptionData_messageReceivedBuilder get messageReceived =>
      _$this._messageReceived ??=
          new GMessageSubscriptionData_messageReceivedBuilder();
  set messageReceived(
          GMessageSubscriptionData_messageReceivedBuilder? messageReceived) =>
      _$this._messageReceived = messageReceived;

  GMessageSubscriptionDataBuilder() {
    GMessageSubscriptionData._initializeBuilder(this);
  }

  GMessageSubscriptionDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _messageReceived = $v.messageReceived?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMessageSubscriptionData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMessageSubscriptionData;
  }

  @override
  void update(void Function(GMessageSubscriptionDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GMessageSubscriptionData build() {
    _$GMessageSubscriptionData _$result;
    try {
      _$result = _$v ??
          new _$GMessageSubscriptionData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GMessageSubscriptionData', 'G__typename'),
              messageReceived: _messageReceived?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'messageReceived';
        _messageReceived?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GMessageSubscriptionData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMessageSubscriptionData_messageReceived
    extends GMessageSubscriptionData_messageReceived {
  @override
  final String G__typename;
  @override
  final String message;
  @override
  final String chatroomId;
  @override
  final String senderId;
  @override
  final String id;

  factory _$GMessageSubscriptionData_messageReceived(
          [void Function(GMessageSubscriptionData_messageReceivedBuilder)?
              updates]) =>
      (new GMessageSubscriptionData_messageReceivedBuilder()..update(updates))
          .build();

  _$GMessageSubscriptionData_messageReceived._(
      {required this.G__typename,
      required this.message,
      required this.chatroomId,
      required this.senderId,
      required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GMessageSubscriptionData_messageReceived', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message, 'GMessageSubscriptionData_messageReceived', 'message');
    BuiltValueNullFieldError.checkNotNull(
        chatroomId, 'GMessageSubscriptionData_messageReceived', 'chatroomId');
    BuiltValueNullFieldError.checkNotNull(
        senderId, 'GMessageSubscriptionData_messageReceived', 'senderId');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GMessageSubscriptionData_messageReceived', 'id');
  }

  @override
  GMessageSubscriptionData_messageReceived rebuild(
          void Function(GMessageSubscriptionData_messageReceivedBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMessageSubscriptionData_messageReceivedBuilder toBuilder() =>
      new GMessageSubscriptionData_messageReceivedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMessageSubscriptionData_messageReceived &&
        G__typename == other.G__typename &&
        message == other.message &&
        chatroomId == other.chatroomId &&
        senderId == other.senderId &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, G__typename.hashCode), message.hashCode),
                chatroomId.hashCode),
            senderId.hashCode),
        id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GMessageSubscriptionData_messageReceived')
          ..add('G__typename', G__typename)
          ..add('message', message)
          ..add('chatroomId', chatroomId)
          ..add('senderId', senderId)
          ..add('id', id))
        .toString();
  }
}

class GMessageSubscriptionData_messageReceivedBuilder
    implements
        Builder<GMessageSubscriptionData_messageReceived,
            GMessageSubscriptionData_messageReceivedBuilder> {
  _$GMessageSubscriptionData_messageReceived? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _chatroomId;
  String? get chatroomId => _$this._chatroomId;
  set chatroomId(String? chatroomId) => _$this._chatroomId = chatroomId;

  String? _senderId;
  String? get senderId => _$this._senderId;
  set senderId(String? senderId) => _$this._senderId = senderId;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GMessageSubscriptionData_messageReceivedBuilder() {
    GMessageSubscriptionData_messageReceived._initializeBuilder(this);
  }

  GMessageSubscriptionData_messageReceivedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _message = $v.message;
      _chatroomId = $v.chatroomId;
      _senderId = $v.senderId;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMessageSubscriptionData_messageReceived other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMessageSubscriptionData_messageReceived;
  }

  @override
  void update(
      void Function(GMessageSubscriptionData_messageReceivedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GMessageSubscriptionData_messageReceived build() {
    final _$result = _$v ??
        new _$GMessageSubscriptionData_messageReceived._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GMessageSubscriptionData_messageReceived', 'G__typename'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, 'GMessageSubscriptionData_messageReceived', 'message'),
            chatroomId: BuiltValueNullFieldError.checkNotNull(chatroomId,
                'GMessageSubscriptionData_messageReceived', 'chatroomId'),
            senderId: BuiltValueNullFieldError.checkNotNull(senderId,
                'GMessageSubscriptionData_messageReceived', 'senderId'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GMessageSubscriptionData_messageReceived', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
