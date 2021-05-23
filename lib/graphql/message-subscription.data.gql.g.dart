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
Serializer<GMessageSubscriptionData_messageReceived_sender>
    _$gMessageSubscriptionDataMessageReceivedSenderSerializer =
    new _$GMessageSubscriptionData_messageReceived_senderSerializer();

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
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'sendTime',
      serializers.serialize(object.sendTime,
          specifiedType: const FullType(_i2.GDateTimeOffset)),
    ];
    Object? value;
    value = object.sender;
    if (value != null) {
      result
        ..add('sender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMessageSubscriptionData_messageReceived_sender)));
    }
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
        case 'sender':
          result.sender.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMessageSubscriptionData_messageReceived_sender))!
              as GMessageSubscriptionData_messageReceived_sender);
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'chatroomId':
          result.chatroomId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sendTime':
          result.sendTime.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GDateTimeOffset))!
              as _i2.GDateTimeOffset);
          break;
      }
    }

    return result.build();
  }
}

class _$GMessageSubscriptionData_messageReceived_senderSerializer
    implements
        StructuredSerializer<GMessageSubscriptionData_messageReceived_sender> {
  @override
  final Iterable<Type> types = const [
    GMessageSubscriptionData_messageReceived_sender,
    _$GMessageSubscriptionData_messageReceived_sender
  ];
  @override
  final String wireName = 'GMessageSubscriptionData_messageReceived_sender';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMessageSubscriptionData_messageReceived_sender object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'isBot',
      serializers.serialize(object.isBot, specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GMessageSubscriptionData_messageReceived_sender deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMessageSubscriptionData_messageReceived_senderBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isBot':
          result.isBot = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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
  final GMessageSubscriptionData_messageReceived_sender? sender;
  @override
  final String message;
  @override
  final String chatroomId;
  @override
  final String id;
  @override
  final _i2.GDateTimeOffset sendTime;

  factory _$GMessageSubscriptionData_messageReceived(
          [void Function(GMessageSubscriptionData_messageReceivedBuilder)?
              updates]) =>
      (new GMessageSubscriptionData_messageReceivedBuilder()..update(updates))
          .build();

  _$GMessageSubscriptionData_messageReceived._(
      {required this.G__typename,
      this.sender,
      required this.message,
      required this.chatroomId,
      required this.id,
      required this.sendTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GMessageSubscriptionData_messageReceived', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message, 'GMessageSubscriptionData_messageReceived', 'message');
    BuiltValueNullFieldError.checkNotNull(
        chatroomId, 'GMessageSubscriptionData_messageReceived', 'chatroomId');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GMessageSubscriptionData_messageReceived', 'id');
    BuiltValueNullFieldError.checkNotNull(
        sendTime, 'GMessageSubscriptionData_messageReceived', 'sendTime');
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
        sender == other.sender &&
        message == other.message &&
        chatroomId == other.chatroomId &&
        id == other.id &&
        sendTime == other.sendTime;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), sender.hashCode),
                    message.hashCode),
                chatroomId.hashCode),
            id.hashCode),
        sendTime.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GMessageSubscriptionData_messageReceived')
          ..add('G__typename', G__typename)
          ..add('sender', sender)
          ..add('message', message)
          ..add('chatroomId', chatroomId)
          ..add('id', id)
          ..add('sendTime', sendTime))
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

  GMessageSubscriptionData_messageReceived_senderBuilder? _sender;
  GMessageSubscriptionData_messageReceived_senderBuilder get sender =>
      _$this._sender ??=
          new GMessageSubscriptionData_messageReceived_senderBuilder();
  set sender(GMessageSubscriptionData_messageReceived_senderBuilder? sender) =>
      _$this._sender = sender;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _chatroomId;
  String? get chatroomId => _$this._chatroomId;
  set chatroomId(String? chatroomId) => _$this._chatroomId = chatroomId;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i2.GDateTimeOffsetBuilder? _sendTime;
  _i2.GDateTimeOffsetBuilder get sendTime =>
      _$this._sendTime ??= new _i2.GDateTimeOffsetBuilder();
  set sendTime(_i2.GDateTimeOffsetBuilder? sendTime) =>
      _$this._sendTime = sendTime;

  GMessageSubscriptionData_messageReceivedBuilder() {
    GMessageSubscriptionData_messageReceived._initializeBuilder(this);
  }

  GMessageSubscriptionData_messageReceivedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sender = $v.sender?.toBuilder();
      _message = $v.message;
      _chatroomId = $v.chatroomId;
      _id = $v.id;
      _sendTime = $v.sendTime.toBuilder();
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
    _$GMessageSubscriptionData_messageReceived _$result;
    try {
      _$result = _$v ??
          new _$GMessageSubscriptionData_messageReceived._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GMessageSubscriptionData_messageReceived', 'G__typename'),
              sender: _sender?.build(),
              message: BuiltValueNullFieldError.checkNotNull(message,
                  'GMessageSubscriptionData_messageReceived', 'message'),
              chatroomId: BuiltValueNullFieldError.checkNotNull(chatroomId,
                  'GMessageSubscriptionData_messageReceived', 'chatroomId'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GMessageSubscriptionData_messageReceived', 'id'),
              sendTime: sendTime.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sender';
        _sender?.build();

        _$failedField = 'sendTime';
        sendTime.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GMessageSubscriptionData_messageReceived',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMessageSubscriptionData_messageReceived_sender
    extends GMessageSubscriptionData_messageReceived_sender {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final bool isBot;

  factory _$GMessageSubscriptionData_messageReceived_sender(
          [void Function(
                  GMessageSubscriptionData_messageReceived_senderBuilder)?
              updates]) =>
      (new GMessageSubscriptionData_messageReceived_senderBuilder()
            ..update(updates))
          .build();

  _$GMessageSubscriptionData_messageReceived_sender._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.isBot})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GMessageSubscriptionData_messageReceived_sender', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GMessageSubscriptionData_messageReceived_sender', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GMessageSubscriptionData_messageReceived_sender', 'name');
    BuiltValueNullFieldError.checkNotNull(
        isBot, 'GMessageSubscriptionData_messageReceived_sender', 'isBot');
  }

  @override
  GMessageSubscriptionData_messageReceived_sender rebuild(
          void Function(GMessageSubscriptionData_messageReceived_senderBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMessageSubscriptionData_messageReceived_senderBuilder toBuilder() =>
      new GMessageSubscriptionData_messageReceived_senderBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMessageSubscriptionData_messageReceived_sender &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        isBot == other.isBot;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), name.hashCode),
        isBot.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GMessageSubscriptionData_messageReceived_sender')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('isBot', isBot))
        .toString();
  }
}

class GMessageSubscriptionData_messageReceived_senderBuilder
    implements
        Builder<GMessageSubscriptionData_messageReceived_sender,
            GMessageSubscriptionData_messageReceived_senderBuilder> {
  _$GMessageSubscriptionData_messageReceived_sender? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _isBot;
  bool? get isBot => _$this._isBot;
  set isBot(bool? isBot) => _$this._isBot = isBot;

  GMessageSubscriptionData_messageReceived_senderBuilder() {
    GMessageSubscriptionData_messageReceived_sender._initializeBuilder(this);
  }

  GMessageSubscriptionData_messageReceived_senderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _isBot = $v.isBot;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMessageSubscriptionData_messageReceived_sender other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMessageSubscriptionData_messageReceived_sender;
  }

  @override
  void update(
      void Function(GMessageSubscriptionData_messageReceived_senderBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GMessageSubscriptionData_messageReceived_sender build() {
    final _$result = _$v ??
        new _$GMessageSubscriptionData_messageReceived_sender._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GMessageSubscriptionData_messageReceived_sender',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GMessageSubscriptionData_messageReceived_sender', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name,
                'GMessageSubscriptionData_messageReceived_sender', 'name'),
            isBot: BuiltValueNullFieldError.checkNotNull(isBot,
                'GMessageSubscriptionData_messageReceived_sender', 'isBot'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
