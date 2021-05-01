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
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'senderId',
      serializers.serialize(object.senderId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.senderIsMe;
    if (value != null) {
      result
        ..add('senderIsMe')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'senderId':
          result.senderId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'senderIsMe':
          result.senderIsMe = serializers.deserialize(value,
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
  final String id;
  @override
  final String message;
  @override
  final String senderId;
  @override
  final bool? senderIsMe;

  factory _$GGetChatroomMessagesData_chatroom_messages(
          [void Function(GGetChatroomMessagesData_chatroom_messagesBuilder)?
              updates]) =>
      (new GGetChatroomMessagesData_chatroom_messagesBuilder()..update(updates))
          .build();

  _$GGetChatroomMessagesData_chatroom_messages._(
      {required this.G__typename,
      required this.id,
      required this.message,
      required this.senderId,
      this.senderIsMe})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetChatroomMessagesData_chatroom_messages', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetChatroomMessagesData_chatroom_messages', 'id');
    BuiltValueNullFieldError.checkNotNull(
        message, 'GGetChatroomMessagesData_chatroom_messages', 'message');
    BuiltValueNullFieldError.checkNotNull(
        senderId, 'GGetChatroomMessagesData_chatroom_messages', 'senderId');
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
        id == other.id &&
        message == other.message &&
        senderId == other.senderId &&
        senderIsMe == other.senderIsMe;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                message.hashCode),
            senderId.hashCode),
        senderIsMe.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetChatroomMessagesData_chatroom_messages')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('message', message)
          ..add('senderId', senderId)
          ..add('senderIsMe', senderIsMe))
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

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _senderId;
  String? get senderId => _$this._senderId;
  set senderId(String? senderId) => _$this._senderId = senderId;

  bool? _senderIsMe;
  bool? get senderIsMe => _$this._senderIsMe;
  set senderIsMe(bool? senderIsMe) => _$this._senderIsMe = senderIsMe;

  GGetChatroomMessagesData_chatroom_messagesBuilder() {
    GGetChatroomMessagesData_chatroom_messages._initializeBuilder(this);
  }

  GGetChatroomMessagesData_chatroom_messagesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _message = $v.message;
      _senderId = $v.senderId;
      _senderIsMe = $v.senderIsMe;
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
    final _$result = _$v ??
        new _$GGetChatroomMessagesData_chatroom_messages._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetChatroomMessagesData_chatroom_messages', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetChatroomMessagesData_chatroom_messages', 'id'),
            message: BuiltValueNullFieldError.checkNotNull(message,
                'GGetChatroomMessagesData_chatroom_messages', 'message'),
            senderId: BuiltValueNullFieldError.checkNotNull(senderId,
                'GGetChatroomMessagesData_chatroom_messages', 'senderId'),
            senderIsMe: senderIsMe);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
