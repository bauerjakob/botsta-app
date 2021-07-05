// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatroom-messages.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetChatroomMessagesData> _$gGetChatroomMessagesDataSerializer =
    new _$GGetChatroomMessagesDataSerializer();
Serializer<GGetChatroomMessagesData_chatroom>
    _$gGetChatroomMessagesDataChatroomSerializer =
    new _$GGetChatroomMessagesData_chatroomSerializer();
Serializer<GGetChatroomMessagesData_chatroom_messages>
    _$gGetChatroomMessagesDataChatroomMessagesSerializer =
    new _$GGetChatroomMessagesData_chatroom_messagesSerializer();
Serializer<GGetChatroomMessagesData_chatroom_messages_sender>
    _$gGetChatroomMessagesDataChatroomMessagesSenderSerializer =
    new _$GGetChatroomMessagesData_chatroom_messages_senderSerializer();

class _$GGetChatroomMessagesDataSerializer
    implements StructuredSerializer<GGetChatroomMessagesData> {
  @override
  final Iterable<Type> types = const [
    GGetChatroomMessagesData,
    _$GGetChatroomMessagesData
  ];
  @override
  final String wireName = 'GGetChatroomMessagesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetChatroomMessagesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.chatroom;
    if (value != null) {
      result
        ..add('chatroom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GGetChatroomMessagesData_chatroom)));
    }
    return result;
  }

  @override
  GGetChatroomMessagesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetChatroomMessagesDataBuilder();

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
        case 'chatroom':
          result.chatroom.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GGetChatroomMessagesData_chatroom))!
              as GGetChatroomMessagesData_chatroom);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetChatroomMessagesData_chatroomSerializer
    implements StructuredSerializer<GGetChatroomMessagesData_chatroom> {
  @override
  final Iterable<Type> types = const [
    GGetChatroomMessagesData_chatroom,
    _$GGetChatroomMessagesData_chatroom
  ];
  @override
  final String wireName = 'GGetChatroomMessagesData_chatroom';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetChatroomMessagesData_chatroom object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.messages;
    if (value != null) {
      result
        ..add('messages')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GGetChatroomMessagesData_chatroom_messages)
            ])));
    }
    return result;
  }

  @override
  GGetChatroomMessagesData_chatroom deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetChatroomMessagesData_chatroomBuilder();

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
        case 'messages':
          result.messages.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetChatroomMessagesData_chatroom_messages)
              ]))! as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetChatroomMessagesData_chatroom_messagesSerializer
    implements
        StructuredSerializer<GGetChatroomMessagesData_chatroom_messages> {
  @override
  final Iterable<Type> types = const [
    GGetChatroomMessagesData_chatroom_messages,
    _$GGetChatroomMessagesData_chatroom_messages
  ];
  @override
  final String wireName = 'GGetChatroomMessagesData_chatroom_messages';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetChatroomMessagesData_chatroom_messages object,
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
      'senderPublicKey',
      serializers.serialize(object.senderPublicKey,
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
                GGetChatroomMessagesData_chatroom_messages_sender)));
    }
    return result;
  }

  @override
  GGetChatroomMessagesData_chatroom_messages deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetChatroomMessagesData_chatroom_messagesBuilder();

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
                      GGetChatroomMessagesData_chatroom_messages_sender))!
              as GGetChatroomMessagesData_chatroom_messages_sender);
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'chatroomId':
          result.chatroomId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'senderPublicKey':
          result.senderPublicKey = serializers.deserialize(value,
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

class _$GGetChatroomMessagesData_chatroom_messages_senderSerializer
    implements
        StructuredSerializer<
            GGetChatroomMessagesData_chatroom_messages_sender> {
  @override
  final Iterable<Type> types = const [
    GGetChatroomMessagesData_chatroom_messages_sender,
    _$GGetChatroomMessagesData_chatroom_messages_sender
  ];
  @override
  final String wireName = 'GGetChatroomMessagesData_chatroom_messages_sender';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetChatroomMessagesData_chatroom_messages_sender object,
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
  GGetChatroomMessagesData_chatroom_messages_sender deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GGetChatroomMessagesData_chatroom_messages_senderBuilder();

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

class _$GGetChatroomMessagesData extends GGetChatroomMessagesData {
  @override
  final String G__typename;
  @override
  final GGetChatroomMessagesData_chatroom? chatroom;

  factory _$GGetChatroomMessagesData(
          [void Function(GGetChatroomMessagesDataBuilder)? updates]) =>
      (new GGetChatroomMessagesDataBuilder()..update(updates)).build();

  _$GGetChatroomMessagesData._({required this.G__typename, this.chatroom})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetChatroomMessagesData', 'G__typename');
  }

  @override
  GGetChatroomMessagesData rebuild(
          void Function(GGetChatroomMessagesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetChatroomMessagesDataBuilder toBuilder() =>
      new GGetChatroomMessagesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetChatroomMessagesData &&
        G__typename == other.G__typename &&
        chatroom == other.chatroom;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), chatroom.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetChatroomMessagesData')
          ..add('G__typename', G__typename)
          ..add('chatroom', chatroom))
        .toString();
  }
}

class GGetChatroomMessagesDataBuilder
    implements
        Builder<GGetChatroomMessagesData, GGetChatroomMessagesDataBuilder> {
  _$GGetChatroomMessagesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetChatroomMessagesData_chatroomBuilder? _chatroom;
  GGetChatroomMessagesData_chatroomBuilder get chatroom =>
      _$this._chatroom ??= new GGetChatroomMessagesData_chatroomBuilder();
  set chatroom(GGetChatroomMessagesData_chatroomBuilder? chatroom) =>
      _$this._chatroom = chatroom;

  GGetChatroomMessagesDataBuilder() {
    GGetChatroomMessagesData._initializeBuilder(this);
  }

  GGetChatroomMessagesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _chatroom = $v.chatroom?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetChatroomMessagesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetChatroomMessagesData;
  }

  @override
  void update(void Function(GGetChatroomMessagesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetChatroomMessagesData build() {
    _$GGetChatroomMessagesData _$result;
    try {
      _$result = _$v ??
          new _$GGetChatroomMessagesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetChatroomMessagesData', 'G__typename'),
              chatroom: _chatroom?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'chatroom';
        _chatroom?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetChatroomMessagesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetChatroomMessagesData_chatroom
    extends GGetChatroomMessagesData_chatroom {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? name;
  @override
  final BuiltList<GGetChatroomMessagesData_chatroom_messages>? messages;

  factory _$GGetChatroomMessagesData_chatroom(
          [void Function(GGetChatroomMessagesData_chatroomBuilder)? updates]) =>
      (new GGetChatroomMessagesData_chatroomBuilder()..update(updates)).build();

  _$GGetChatroomMessagesData_chatroom._(
      {required this.G__typename, required this.id, this.name, this.messages})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetChatroomMessagesData_chatroom', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetChatroomMessagesData_chatroom', 'id');
  }

  @override
  GGetChatroomMessagesData_chatroom rebuild(
          void Function(GGetChatroomMessagesData_chatroomBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetChatroomMessagesData_chatroomBuilder toBuilder() =>
      new GGetChatroomMessagesData_chatroomBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetChatroomMessagesData_chatroom &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        messages == other.messages;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), name.hashCode),
        messages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetChatroomMessagesData_chatroom')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('messages', messages))
        .toString();
  }
}

class GGetChatroomMessagesData_chatroomBuilder
    implements
        Builder<GGetChatroomMessagesData_chatroom,
            GGetChatroomMessagesData_chatroomBuilder> {
  _$GGetChatroomMessagesData_chatroom? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<GGetChatroomMessagesData_chatroom_messages>? _messages;
  ListBuilder<GGetChatroomMessagesData_chatroom_messages> get messages =>
      _$this._messages ??=
          new ListBuilder<GGetChatroomMessagesData_chatroom_messages>();
  set messages(
          ListBuilder<GGetChatroomMessagesData_chatroom_messages>? messages) =>
      _$this._messages = messages;

  GGetChatroomMessagesData_chatroomBuilder() {
    GGetChatroomMessagesData_chatroom._initializeBuilder(this);
  }

  GGetChatroomMessagesData_chatroomBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _messages = $v.messages?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetChatroomMessagesData_chatroom other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetChatroomMessagesData_chatroom;
  }

  @override
  void update(
      void Function(GGetChatroomMessagesData_chatroomBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetChatroomMessagesData_chatroom build() {
    _$GGetChatroomMessagesData_chatroom _$result;
    try {
      _$result = _$v ??
          new _$GGetChatroomMessagesData_chatroom._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetChatroomMessagesData_chatroom', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetChatroomMessagesData_chatroom', 'id'),
              name: name,
              messages: _messages?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'messages';
        _messages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetChatroomMessagesData_chatroom', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetChatroomMessagesData_chatroom_messages
    extends GGetChatroomMessagesData_chatroom_messages {
  @override
  final String G__typename;
  @override
  final GGetChatroomMessagesData_chatroom_messages_sender? sender;
  @override
  final String message;
  @override
  final String chatroomId;
  @override
  final String senderPublicKey;
  @override
  final String id;
  @override
  final _i2.GDateTimeOffset sendTime;

  factory _$GGetChatroomMessagesData_chatroom_messages(
          [void Function(GGetChatroomMessagesData_chatroom_messagesBuilder)?
              updates]) =>
      (new GGetChatroomMessagesData_chatroom_messagesBuilder()..update(updates))
          .build();

  _$GGetChatroomMessagesData_chatroom_messages._(
      {required this.G__typename,
      this.sender,
      required this.message,
      required this.chatroomId,
      required this.senderPublicKey,
      required this.id,
      required this.sendTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetChatroomMessagesData_chatroom_messages', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message, 'GGetChatroomMessagesData_chatroom_messages', 'message');
    BuiltValueNullFieldError.checkNotNull(
        chatroomId, 'GGetChatroomMessagesData_chatroom_messages', 'chatroomId');
    BuiltValueNullFieldError.checkNotNull(senderPublicKey,
        'GGetChatroomMessagesData_chatroom_messages', 'senderPublicKey');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetChatroomMessagesData_chatroom_messages', 'id');
    BuiltValueNullFieldError.checkNotNull(
        sendTime, 'GGetChatroomMessagesData_chatroom_messages', 'sendTime');
  }

  @override
  GGetChatroomMessagesData_chatroom_messages rebuild(
          void Function(GGetChatroomMessagesData_chatroom_messagesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetChatroomMessagesData_chatroom_messagesBuilder toBuilder() =>
      new GGetChatroomMessagesData_chatroom_messagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetChatroomMessagesData_chatroom_messages &&
        G__typename == other.G__typename &&
        sender == other.sender &&
        message == other.message &&
        chatroomId == other.chatroomId &&
        senderPublicKey == other.senderPublicKey &&
        id == other.id &&
        sendTime == other.sendTime;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), sender.hashCode),
                        message.hashCode),
                    chatroomId.hashCode),
                senderPublicKey.hashCode),
            id.hashCode),
        sendTime.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetChatroomMessagesData_chatroom_messages')
          ..add('G__typename', G__typename)
          ..add('sender', sender)
          ..add('message', message)
          ..add('chatroomId', chatroomId)
          ..add('senderPublicKey', senderPublicKey)
          ..add('id', id)
          ..add('sendTime', sendTime))
        .toString();
  }
}

class GGetChatroomMessagesData_chatroom_messagesBuilder
    implements
        Builder<GGetChatroomMessagesData_chatroom_messages,
            GGetChatroomMessagesData_chatroom_messagesBuilder> {
  _$GGetChatroomMessagesData_chatroom_messages? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetChatroomMessagesData_chatroom_messages_senderBuilder? _sender;
  GGetChatroomMessagesData_chatroom_messages_senderBuilder get sender =>
      _$this._sender ??=
          new GGetChatroomMessagesData_chatroom_messages_senderBuilder();
  set sender(
          GGetChatroomMessagesData_chatroom_messages_senderBuilder? sender) =>
      _$this._sender = sender;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _chatroomId;
  String? get chatroomId => _$this._chatroomId;
  set chatroomId(String? chatroomId) => _$this._chatroomId = chatroomId;

  String? _senderPublicKey;
  String? get senderPublicKey => _$this._senderPublicKey;
  set senderPublicKey(String? senderPublicKey) =>
      _$this._senderPublicKey = senderPublicKey;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i2.GDateTimeOffsetBuilder? _sendTime;
  _i2.GDateTimeOffsetBuilder get sendTime =>
      _$this._sendTime ??= new _i2.GDateTimeOffsetBuilder();
  set sendTime(_i2.GDateTimeOffsetBuilder? sendTime) =>
      _$this._sendTime = sendTime;

  GGetChatroomMessagesData_chatroom_messagesBuilder() {
    GGetChatroomMessagesData_chatroom_messages._initializeBuilder(this);
  }

  GGetChatroomMessagesData_chatroom_messagesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sender = $v.sender?.toBuilder();
      _message = $v.message;
      _chatroomId = $v.chatroomId;
      _senderPublicKey = $v.senderPublicKey;
      _id = $v.id;
      _sendTime = $v.sendTime.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetChatroomMessagesData_chatroom_messages other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetChatroomMessagesData_chatroom_messages;
  }

  @override
  void update(
      void Function(GGetChatroomMessagesData_chatroom_messagesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetChatroomMessagesData_chatroom_messages build() {
    _$GGetChatroomMessagesData_chatroom_messages _$result;
    try {
      _$result = _$v ??
          new _$GGetChatroomMessagesData_chatroom_messages._(
              G__typename:
                  BuiltValueNullFieldError.checkNotNull(G__typename,
                      'GGetChatroomMessagesData_chatroom_messages', 'G__typename'),
              sender: _sender?.build(),
              message: BuiltValueNullFieldError.checkNotNull(message,
                  'GGetChatroomMessagesData_chatroom_messages', 'message'),
              chatroomId: BuiltValueNullFieldError.checkNotNull(chatroomId,
                  'GGetChatroomMessagesData_chatroom_messages', 'chatroomId'),
              senderPublicKey: BuiltValueNullFieldError.checkNotNull(
                  senderPublicKey,
                  'GGetChatroomMessagesData_chatroom_messages',
                  'senderPublicKey'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetChatroomMessagesData_chatroom_messages', 'id'),
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
            'GGetChatroomMessagesData_chatroom_messages',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetChatroomMessagesData_chatroom_messages_sender
    extends GGetChatroomMessagesData_chatroom_messages_sender {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final bool isBot;

  factory _$GGetChatroomMessagesData_chatroom_messages_sender(
          [void Function(
                  GGetChatroomMessagesData_chatroom_messages_senderBuilder)?
              updates]) =>
      (new GGetChatroomMessagesData_chatroom_messages_senderBuilder()
            ..update(updates))
          .build();

  _$GGetChatroomMessagesData_chatroom_messages_sender._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.isBot})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetChatroomMessagesData_chatroom_messages_sender', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetChatroomMessagesData_chatroom_messages_sender', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetChatroomMessagesData_chatroom_messages_sender', 'name');
    BuiltValueNullFieldError.checkNotNull(
        isBot, 'GGetChatroomMessagesData_chatroom_messages_sender', 'isBot');
  }

  @override
  GGetChatroomMessagesData_chatroom_messages_sender rebuild(
          void Function(
                  GGetChatroomMessagesData_chatroom_messages_senderBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetChatroomMessagesData_chatroom_messages_senderBuilder toBuilder() =>
      new GGetChatroomMessagesData_chatroom_messages_senderBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetChatroomMessagesData_chatroom_messages_sender &&
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
            'GGetChatroomMessagesData_chatroom_messages_sender')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('isBot', isBot))
        .toString();
  }
}

class GGetChatroomMessagesData_chatroom_messages_senderBuilder
    implements
        Builder<GGetChatroomMessagesData_chatroom_messages_sender,
            GGetChatroomMessagesData_chatroom_messages_senderBuilder> {
  _$GGetChatroomMessagesData_chatroom_messages_sender? _$v;

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

  GGetChatroomMessagesData_chatroom_messages_senderBuilder() {
    GGetChatroomMessagesData_chatroom_messages_sender._initializeBuilder(this);
  }

  GGetChatroomMessagesData_chatroom_messages_senderBuilder get _$this {
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
  void replace(GGetChatroomMessagesData_chatroom_messages_sender other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetChatroomMessagesData_chatroom_messages_sender;
  }

  @override
  void update(
      void Function(GGetChatroomMessagesData_chatroom_messages_senderBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetChatroomMessagesData_chatroom_messages_sender build() {
    final _$result = _$v ??
        new _$GGetChatroomMessagesData_chatroom_messages_sender._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GGetChatroomMessagesData_chatroom_messages_sender',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetChatroomMessagesData_chatroom_messages_sender', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name,
                'GGetChatroomMessagesData_chatroom_messages_sender', 'name'),
            isBot: BuiltValueNullFieldError.checkNotNull(isBot,
                'GGetChatroomMessagesData_chatroom_messages_sender', 'isBot'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
