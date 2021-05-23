// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatrooms.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetChatroomsData> _$gGetChatroomsDataSerializer =
    new _$GGetChatroomsDataSerializer();
Serializer<GGetChatroomsData_chatrooms> _$gGetChatroomsDataChatroomsSerializer =
    new _$GGetChatroomsData_chatroomsSerializer();
Serializer<GGetChatroomsData_chatrooms_latestMessage>
    _$gGetChatroomsDataChatroomsLatestMessageSerializer =
    new _$GGetChatroomsData_chatrooms_latestMessageSerializer();
Serializer<GGetChatroomsData_chatrooms_latestMessage_sender>
    _$gGetChatroomsDataChatroomsLatestMessageSenderSerializer =
    new _$GGetChatroomsData_chatrooms_latestMessage_senderSerializer();

class _$GGetChatroomsDataSerializer
    implements StructuredSerializer<GGetChatroomsData> {
  @override
  final Iterable<Type> types = const [GGetChatroomsData, _$GGetChatroomsData];
  @override
  final String wireName = 'GGetChatroomsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetChatroomsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.chatrooms;
    if (value != null) {
      result
        ..add('chatrooms')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GGetChatroomsData_chatrooms)])));
    }
    return result;
  }

  @override
  GGetChatroomsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetChatroomsDataBuilder();

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
        case 'chatrooms':
          result.chatrooms.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetChatroomsData_chatrooms)
              ]))! as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetChatroomsData_chatroomsSerializer
    implements StructuredSerializer<GGetChatroomsData_chatrooms> {
  @override
  final Iterable<Type> types = const [
    GGetChatroomsData_chatrooms,
    _$GGetChatroomsData_chatrooms
  ];
  @override
  final String wireName = 'GGetChatroomsData_chatrooms';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetChatroomsData_chatrooms object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.latestMessage;
    if (value != null) {
      result
        ..add('latestMessage')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GGetChatroomsData_chatrooms_latestMessage)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetChatroomsData_chatrooms deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetChatroomsData_chatroomsBuilder();

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
        case 'latestMessage':
          result.latestMessage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GGetChatroomsData_chatrooms_latestMessage))!
              as GGetChatroomsData_chatrooms_latestMessage);
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetChatroomsData_chatrooms_latestMessageSerializer
    implements StructuredSerializer<GGetChatroomsData_chatrooms_latestMessage> {
  @override
  final Iterable<Type> types = const [
    GGetChatroomsData_chatrooms_latestMessage,
    _$GGetChatroomsData_chatrooms_latestMessage
  ];
  @override
  final String wireName = 'GGetChatroomsData_chatrooms_latestMessage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetChatroomsData_chatrooms_latestMessage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
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
                GGetChatroomsData_chatrooms_latestMessage_sender)));
    }
    return result;
  }

  @override
  GGetChatroomsData_chatrooms_latestMessage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetChatroomsData_chatrooms_latestMessageBuilder();

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
                      GGetChatroomsData_chatrooms_latestMessage_sender))!
              as GGetChatroomsData_chatrooms_latestMessage_sender);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
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

class _$GGetChatroomsData_chatrooms_latestMessage_senderSerializer
    implements
        StructuredSerializer<GGetChatroomsData_chatrooms_latestMessage_sender> {
  @override
  final Iterable<Type> types = const [
    GGetChatroomsData_chatrooms_latestMessage_sender,
    _$GGetChatroomsData_chatrooms_latestMessage_sender
  ];
  @override
  final String wireName = 'GGetChatroomsData_chatrooms_latestMessage_sender';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetChatroomsData_chatrooms_latestMessage_sender object,
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
  GGetChatroomsData_chatrooms_latestMessage_sender deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GGetChatroomsData_chatrooms_latestMessage_senderBuilder();

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

class _$GGetChatroomsData extends GGetChatroomsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetChatroomsData_chatrooms>? chatrooms;

  factory _$GGetChatroomsData(
          [void Function(GGetChatroomsDataBuilder)? updates]) =>
      (new GGetChatroomsDataBuilder()..update(updates)).build();

  _$GGetChatroomsData._({required this.G__typename, this.chatrooms})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetChatroomsData', 'G__typename');
  }

  @override
  GGetChatroomsData rebuild(void Function(GGetChatroomsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetChatroomsDataBuilder toBuilder() =>
      new GGetChatroomsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetChatroomsData &&
        G__typename == other.G__typename &&
        chatrooms == other.chatrooms;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), chatrooms.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetChatroomsData')
          ..add('G__typename', G__typename)
          ..add('chatrooms', chatrooms))
        .toString();
  }
}

class GGetChatroomsDataBuilder
    implements Builder<GGetChatroomsData, GGetChatroomsDataBuilder> {
  _$GGetChatroomsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetChatroomsData_chatrooms>? _chatrooms;
  ListBuilder<GGetChatroomsData_chatrooms> get chatrooms =>
      _$this._chatrooms ??= new ListBuilder<GGetChatroomsData_chatrooms>();
  set chatrooms(ListBuilder<GGetChatroomsData_chatrooms>? chatrooms) =>
      _$this._chatrooms = chatrooms;

  GGetChatroomsDataBuilder() {
    GGetChatroomsData._initializeBuilder(this);
  }

  GGetChatroomsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _chatrooms = $v.chatrooms?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetChatroomsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetChatroomsData;
  }

  @override
  void update(void Function(GGetChatroomsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetChatroomsData build() {
    _$GGetChatroomsData _$result;
    try {
      _$result = _$v ??
          new _$GGetChatroomsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetChatroomsData', 'G__typename'),
              chatrooms: _chatrooms?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'chatrooms';
        _chatrooms?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetChatroomsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetChatroomsData_chatrooms extends GGetChatroomsData_chatrooms {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final GGetChatroomsData_chatrooms_latestMessage? latestMessage;
  @override
  final String? name;
  @override
  final String type;

  factory _$GGetChatroomsData_chatrooms(
          [void Function(GGetChatroomsData_chatroomsBuilder)? updates]) =>
      (new GGetChatroomsData_chatroomsBuilder()..update(updates)).build();

  _$GGetChatroomsData_chatrooms._(
      {required this.G__typename,
      required this.id,
      this.latestMessage,
      this.name,
      required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetChatroomsData_chatrooms', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetChatroomsData_chatrooms', 'id');
    BuiltValueNullFieldError.checkNotNull(
        type, 'GGetChatroomsData_chatrooms', 'type');
  }

  @override
  GGetChatroomsData_chatrooms rebuild(
          void Function(GGetChatroomsData_chatroomsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetChatroomsData_chatroomsBuilder toBuilder() =>
      new GGetChatroomsData_chatroomsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetChatroomsData_chatrooms &&
        G__typename == other.G__typename &&
        id == other.id &&
        latestMessage == other.latestMessage &&
        name == other.name &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                latestMessage.hashCode),
            name.hashCode),
        type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetChatroomsData_chatrooms')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('latestMessage', latestMessage)
          ..add('name', name)
          ..add('type', type))
        .toString();
  }
}

class GGetChatroomsData_chatroomsBuilder
    implements
        Builder<GGetChatroomsData_chatrooms,
            GGetChatroomsData_chatroomsBuilder> {
  _$GGetChatroomsData_chatrooms? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GGetChatroomsData_chatrooms_latestMessageBuilder? _latestMessage;
  GGetChatroomsData_chatrooms_latestMessageBuilder get latestMessage =>
      _$this._latestMessage ??=
          new GGetChatroomsData_chatrooms_latestMessageBuilder();
  set latestMessage(
          GGetChatroomsData_chatrooms_latestMessageBuilder? latestMessage) =>
      _$this._latestMessage = latestMessage;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  GGetChatroomsData_chatroomsBuilder() {
    GGetChatroomsData_chatrooms._initializeBuilder(this);
  }

  GGetChatroomsData_chatroomsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _latestMessage = $v.latestMessage?.toBuilder();
      _name = $v.name;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetChatroomsData_chatrooms other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetChatroomsData_chatrooms;
  }

  @override
  void update(void Function(GGetChatroomsData_chatroomsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetChatroomsData_chatrooms build() {
    _$GGetChatroomsData_chatrooms _$result;
    try {
      _$result = _$v ??
          new _$GGetChatroomsData_chatrooms._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetChatroomsData_chatrooms', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetChatroomsData_chatrooms', 'id'),
              latestMessage: _latestMessage?.build(),
              name: name,
              type: BuiltValueNullFieldError.checkNotNull(
                  type, 'GGetChatroomsData_chatrooms', 'type'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'latestMessage';
        _latestMessage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetChatroomsData_chatrooms', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetChatroomsData_chatrooms_latestMessage
    extends GGetChatroomsData_chatrooms_latestMessage {
  @override
  final String G__typename;
  @override
  final GGetChatroomsData_chatrooms_latestMessage_sender? sender;
  @override
  final String id;
  @override
  final String message;
  @override
  final _i2.GDateTimeOffset sendTime;

  factory _$GGetChatroomsData_chatrooms_latestMessage(
          [void Function(GGetChatroomsData_chatrooms_latestMessageBuilder)?
              updates]) =>
      (new GGetChatroomsData_chatrooms_latestMessageBuilder()..update(updates))
          .build();

  _$GGetChatroomsData_chatrooms_latestMessage._(
      {required this.G__typename,
      this.sender,
      required this.id,
      required this.message,
      required this.sendTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetChatroomsData_chatrooms_latestMessage', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetChatroomsData_chatrooms_latestMessage', 'id');
    BuiltValueNullFieldError.checkNotNull(
        message, 'GGetChatroomsData_chatrooms_latestMessage', 'message');
    BuiltValueNullFieldError.checkNotNull(
        sendTime, 'GGetChatroomsData_chatrooms_latestMessage', 'sendTime');
  }

  @override
  GGetChatroomsData_chatrooms_latestMessage rebuild(
          void Function(GGetChatroomsData_chatrooms_latestMessageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetChatroomsData_chatrooms_latestMessageBuilder toBuilder() =>
      new GGetChatroomsData_chatrooms_latestMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetChatroomsData_chatrooms_latestMessage &&
        G__typename == other.G__typename &&
        sender == other.sender &&
        id == other.id &&
        message == other.message &&
        sendTime == other.sendTime;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, G__typename.hashCode), sender.hashCode),
                id.hashCode),
            message.hashCode),
        sendTime.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetChatroomsData_chatrooms_latestMessage')
          ..add('G__typename', G__typename)
          ..add('sender', sender)
          ..add('id', id)
          ..add('message', message)
          ..add('sendTime', sendTime))
        .toString();
  }
}

class GGetChatroomsData_chatrooms_latestMessageBuilder
    implements
        Builder<GGetChatroomsData_chatrooms_latestMessage,
            GGetChatroomsData_chatrooms_latestMessageBuilder> {
  _$GGetChatroomsData_chatrooms_latestMessage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetChatroomsData_chatrooms_latestMessage_senderBuilder? _sender;
  GGetChatroomsData_chatrooms_latestMessage_senderBuilder get sender =>
      _$this._sender ??=
          new GGetChatroomsData_chatrooms_latestMessage_senderBuilder();
  set sender(GGetChatroomsData_chatrooms_latestMessage_senderBuilder? sender) =>
      _$this._sender = sender;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  _i2.GDateTimeOffsetBuilder? _sendTime;
  _i2.GDateTimeOffsetBuilder get sendTime =>
      _$this._sendTime ??= new _i2.GDateTimeOffsetBuilder();
  set sendTime(_i2.GDateTimeOffsetBuilder? sendTime) =>
      _$this._sendTime = sendTime;

  GGetChatroomsData_chatrooms_latestMessageBuilder() {
    GGetChatroomsData_chatrooms_latestMessage._initializeBuilder(this);
  }

  GGetChatroomsData_chatrooms_latestMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sender = $v.sender?.toBuilder();
      _id = $v.id;
      _message = $v.message;
      _sendTime = $v.sendTime.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetChatroomsData_chatrooms_latestMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetChatroomsData_chatrooms_latestMessage;
  }

  @override
  void update(
      void Function(GGetChatroomsData_chatrooms_latestMessageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetChatroomsData_chatrooms_latestMessage build() {
    _$GGetChatroomsData_chatrooms_latestMessage _$result;
    try {
      _$result = _$v ??
          new _$GGetChatroomsData_chatrooms_latestMessage._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetChatroomsData_chatrooms_latestMessage', 'G__typename'),
              sender: _sender?.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetChatroomsData_chatrooms_latestMessage', 'id'),
              message: BuiltValueNullFieldError.checkNotNull(message,
                  'GGetChatroomsData_chatrooms_latestMessage', 'message'),
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
            'GGetChatroomsData_chatrooms_latestMessage',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetChatroomsData_chatrooms_latestMessage_sender
    extends GGetChatroomsData_chatrooms_latestMessage_sender {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final bool isBot;

  factory _$GGetChatroomsData_chatrooms_latestMessage_sender(
          [void Function(
                  GGetChatroomsData_chatrooms_latestMessage_senderBuilder)?
              updates]) =>
      (new GGetChatroomsData_chatrooms_latestMessage_senderBuilder()
            ..update(updates))
          .build();

  _$GGetChatroomsData_chatrooms_latestMessage_sender._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.isBot})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetChatroomsData_chatrooms_latestMessage_sender', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetChatroomsData_chatrooms_latestMessage_sender', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetChatroomsData_chatrooms_latestMessage_sender', 'name');
    BuiltValueNullFieldError.checkNotNull(
        isBot, 'GGetChatroomsData_chatrooms_latestMessage_sender', 'isBot');
  }

  @override
  GGetChatroomsData_chatrooms_latestMessage_sender rebuild(
          void Function(GGetChatroomsData_chatrooms_latestMessage_senderBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetChatroomsData_chatrooms_latestMessage_senderBuilder toBuilder() =>
      new GGetChatroomsData_chatrooms_latestMessage_senderBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetChatroomsData_chatrooms_latestMessage_sender &&
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
            'GGetChatroomsData_chatrooms_latestMessage_sender')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('isBot', isBot))
        .toString();
  }
}

class GGetChatroomsData_chatrooms_latestMessage_senderBuilder
    implements
        Builder<GGetChatroomsData_chatrooms_latestMessage_sender,
            GGetChatroomsData_chatrooms_latestMessage_senderBuilder> {
  _$GGetChatroomsData_chatrooms_latestMessage_sender? _$v;

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

  GGetChatroomsData_chatrooms_latestMessage_senderBuilder() {
    GGetChatroomsData_chatrooms_latestMessage_sender._initializeBuilder(this);
  }

  GGetChatroomsData_chatrooms_latestMessage_senderBuilder get _$this {
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
  void replace(GGetChatroomsData_chatrooms_latestMessage_sender other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetChatroomsData_chatrooms_latestMessage_sender;
  }

  @override
  void update(
      void Function(GGetChatroomsData_chatrooms_latestMessage_senderBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetChatroomsData_chatrooms_latestMessage_sender build() {
    final _$result = _$v ??
        new _$GGetChatroomsData_chatrooms_latestMessage_sender._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GGetChatroomsData_chatrooms_latestMessage_sender',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetChatroomsData_chatrooms_latestMessage_sender', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name,
                'GGetChatroomsData_chatrooms_latestMessage_sender', 'name'),
            isBot: BuiltValueNullFieldError.checkNotNull(isBot,
                'GGetChatroomsData_chatrooms_latestMessage_sender', 'isBot'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
