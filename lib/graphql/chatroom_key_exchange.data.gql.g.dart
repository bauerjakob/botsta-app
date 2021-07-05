// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatroom_key_exchange.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GChatroomKeyExchangeData> _$gChatroomKeyExchangeDataSerializer =
    new _$GChatroomKeyExchangeDataSerializer();
Serializer<GChatroomKeyExchangeData_getChatPracticantsOfChatroom>
    _$gChatroomKeyExchangeDataGetChatPracticantsOfChatroomSerializer =
    new _$GChatroomKeyExchangeData_getChatPracticantsOfChatroomSerializer();
Serializer<GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange>
    _$gChatroomKeyExchangeDataGetChatPracticantsOfChatroomKeyExchangeSerializer =
    new _$GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchangeSerializer();

class _$GChatroomKeyExchangeDataSerializer
    implements StructuredSerializer<GChatroomKeyExchangeData> {
  @override
  final Iterable<Type> types = const [
    GChatroomKeyExchangeData,
    _$GChatroomKeyExchangeData
  ];
  @override
  final String wireName = 'GChatroomKeyExchangeData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GChatroomKeyExchangeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getChatPracticantsOfChatroom;
    if (value != null) {
      result
        ..add('getChatPracticantsOfChatroom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GChatroomKeyExchangeData_getChatPracticantsOfChatroom)
            ])));
    }
    return result;
  }

  @override
  GChatroomKeyExchangeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GChatroomKeyExchangeDataBuilder();

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
        case 'getChatPracticantsOfChatroom':
          result.getChatPracticantsOfChatroom.replace(serializers.deserialize(
              value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GChatroomKeyExchangeData_getChatPracticantsOfChatroom)
              ]))! as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GChatroomKeyExchangeData_getChatPracticantsOfChatroomSerializer
    implements
        StructuredSerializer<
            GChatroomKeyExchangeData_getChatPracticantsOfChatroom> {
  @override
  final Iterable<Type> types = const [
    GChatroomKeyExchangeData_getChatPracticantsOfChatroom,
    _$GChatroomKeyExchangeData_getChatPracticantsOfChatroom
  ];
  @override
  final String wireName =
      'GChatroomKeyExchangeData_getChatPracticantsOfChatroom';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GChatroomKeyExchangeData_getChatPracticantsOfChatroom object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'isBot',
      serializers.serialize(object.isBot, specifiedType: const FullType(bool)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.keyExchange;
    if (value != null) {
      result
        ..add('keyExchange')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange)
            ])));
    }
    return result;
  }

  @override
  GChatroomKeyExchangeData_getChatPracticantsOfChatroom deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GChatroomKeyExchangeData_getChatPracticantsOfChatroomBuilder();

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
        case 'isBot':
          result.isBot = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'keyExchange':
          result.keyExchange.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange)
              ]))! as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchangeSerializer
    implements
        StructuredSerializer<
            GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange> {
  @override
  final Iterable<Type> types = const [
    GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange,
    _$GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange
  ];
  @override
  final String wireName =
      'GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'publicKey',
      serializers.serialize(object.publicKey,
          specifiedType: const FullType(String)),
      'sessionId',
      serializers.serialize(object.sessionId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchangeBuilder();

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
        case 'publicKey':
          result.publicKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sessionId':
          result.sessionId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GChatroomKeyExchangeData extends GChatroomKeyExchangeData {
  @override
  final String G__typename;
  @override
  final BuiltList<GChatroomKeyExchangeData_getChatPracticantsOfChatroom>?
      getChatPracticantsOfChatroom;

  factory _$GChatroomKeyExchangeData(
          [void Function(GChatroomKeyExchangeDataBuilder)? updates]) =>
      (new GChatroomKeyExchangeDataBuilder()..update(updates)).build();

  _$GChatroomKeyExchangeData._(
      {required this.G__typename, this.getChatPracticantsOfChatroom})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GChatroomKeyExchangeData', 'G__typename');
  }

  @override
  GChatroomKeyExchangeData rebuild(
          void Function(GChatroomKeyExchangeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GChatroomKeyExchangeDataBuilder toBuilder() =>
      new GChatroomKeyExchangeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChatroomKeyExchangeData &&
        G__typename == other.G__typename &&
        getChatPracticantsOfChatroom == other.getChatPracticantsOfChatroom;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(0, G__typename.hashCode), getChatPracticantsOfChatroom.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GChatroomKeyExchangeData')
          ..add('G__typename', G__typename)
          ..add('getChatPracticantsOfChatroom', getChatPracticantsOfChatroom))
        .toString();
  }
}

class GChatroomKeyExchangeDataBuilder
    implements
        Builder<GChatroomKeyExchangeData, GChatroomKeyExchangeDataBuilder> {
  _$GChatroomKeyExchangeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GChatroomKeyExchangeData_getChatPracticantsOfChatroom>?
      _getChatPracticantsOfChatroom;
  ListBuilder<GChatroomKeyExchangeData_getChatPracticantsOfChatroom>
      get getChatPracticantsOfChatroom =>
          _$this._getChatPracticantsOfChatroom ??= new ListBuilder<
              GChatroomKeyExchangeData_getChatPracticantsOfChatroom>();
  set getChatPracticantsOfChatroom(
          ListBuilder<GChatroomKeyExchangeData_getChatPracticantsOfChatroom>?
              getChatPracticantsOfChatroom) =>
      _$this._getChatPracticantsOfChatroom = getChatPracticantsOfChatroom;

  GChatroomKeyExchangeDataBuilder() {
    GChatroomKeyExchangeData._initializeBuilder(this);
  }

  GChatroomKeyExchangeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getChatPracticantsOfChatroom =
          $v.getChatPracticantsOfChatroom?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChatroomKeyExchangeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GChatroomKeyExchangeData;
  }

  @override
  void update(void Function(GChatroomKeyExchangeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GChatroomKeyExchangeData build() {
    _$GChatroomKeyExchangeData _$result;
    try {
      _$result = _$v ??
          new _$GChatroomKeyExchangeData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GChatroomKeyExchangeData', 'G__typename'),
              getChatPracticantsOfChatroom:
                  _getChatPracticantsOfChatroom?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getChatPracticantsOfChatroom';
        _getChatPracticantsOfChatroom?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GChatroomKeyExchangeData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GChatroomKeyExchangeData_getChatPracticantsOfChatroom
    extends GChatroomKeyExchangeData_getChatPracticantsOfChatroom {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final bool isBot;
  @override
  final String name;
  @override
  final BuiltList<
          GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange>?
      keyExchange;

  factory _$GChatroomKeyExchangeData_getChatPracticantsOfChatroom(
          [void Function(
                  GChatroomKeyExchangeData_getChatPracticantsOfChatroomBuilder)?
              updates]) =>
      (new GChatroomKeyExchangeData_getChatPracticantsOfChatroomBuilder()
            ..update(updates))
          .build();

  _$GChatroomKeyExchangeData_getChatPracticantsOfChatroom._(
      {required this.G__typename,
      required this.id,
      required this.isBot,
      required this.name,
      this.keyExchange})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GChatroomKeyExchangeData_getChatPracticantsOfChatroom', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GChatroomKeyExchangeData_getChatPracticantsOfChatroom', 'id');
    BuiltValueNullFieldError.checkNotNull(isBot,
        'GChatroomKeyExchangeData_getChatPracticantsOfChatroom', 'isBot');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GChatroomKeyExchangeData_getChatPracticantsOfChatroom', 'name');
  }

  @override
  GChatroomKeyExchangeData_getChatPracticantsOfChatroom rebuild(
          void Function(
                  GChatroomKeyExchangeData_getChatPracticantsOfChatroomBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GChatroomKeyExchangeData_getChatPracticantsOfChatroomBuilder toBuilder() =>
      new GChatroomKeyExchangeData_getChatPracticantsOfChatroomBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChatroomKeyExchangeData_getChatPracticantsOfChatroom &&
        G__typename == other.G__typename &&
        id == other.id &&
        isBot == other.isBot &&
        name == other.name &&
        keyExchange == other.keyExchange;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, G__typename.hashCode), id.hashCode), isBot.hashCode),
            name.hashCode),
        keyExchange.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GChatroomKeyExchangeData_getChatPracticantsOfChatroom')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('isBot', isBot)
          ..add('name', name)
          ..add('keyExchange', keyExchange))
        .toString();
  }
}

class GChatroomKeyExchangeData_getChatPracticantsOfChatroomBuilder
    implements
        Builder<GChatroomKeyExchangeData_getChatPracticantsOfChatroom,
            GChatroomKeyExchangeData_getChatPracticantsOfChatroomBuilder> {
  _$GChatroomKeyExchangeData_getChatPracticantsOfChatroom? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _isBot;
  bool? get isBot => _$this._isBot;
  set isBot(bool? isBot) => _$this._isBot = isBot;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<
          GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange>?
      _keyExchange;
  ListBuilder<GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange>
      get keyExchange => _$this._keyExchange ??= new ListBuilder<
          GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange>();
  set keyExchange(
          ListBuilder<
                  GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange>?
              keyExchange) =>
      _$this._keyExchange = keyExchange;

  GChatroomKeyExchangeData_getChatPracticantsOfChatroomBuilder() {
    GChatroomKeyExchangeData_getChatPracticantsOfChatroom._initializeBuilder(
        this);
  }

  GChatroomKeyExchangeData_getChatPracticantsOfChatroomBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _isBot = $v.isBot;
      _name = $v.name;
      _keyExchange = $v.keyExchange?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChatroomKeyExchangeData_getChatPracticantsOfChatroom other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GChatroomKeyExchangeData_getChatPracticantsOfChatroom;
  }

  @override
  void update(
      void Function(
              GChatroomKeyExchangeData_getChatPracticantsOfChatroomBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GChatroomKeyExchangeData_getChatPracticantsOfChatroom build() {
    _$GChatroomKeyExchangeData_getChatPracticantsOfChatroom _$result;
    try {
      _$result = _$v ??
          new _$GChatroomKeyExchangeData_getChatPracticantsOfChatroom._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GChatroomKeyExchangeData_getChatPracticantsOfChatroom',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  'GChatroomKeyExchangeData_getChatPracticantsOfChatroom',
                  'id'),
              isBot: BuiltValueNullFieldError.checkNotNull(
                  isBot,
                  'GChatroomKeyExchangeData_getChatPracticantsOfChatroom',
                  'isBot'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  'GChatroomKeyExchangeData_getChatPracticantsOfChatroom',
                  'name'),
              keyExchange: _keyExchange?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keyExchange';
        _keyExchange?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GChatroomKeyExchangeData_getChatPracticantsOfChatroom',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange
    extends GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange {
  @override
  final String G__typename;
  @override
  final String publicKey;
  @override
  final String sessionId;

  factory _$GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange(
          [void Function(
                  GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchangeBuilder)?
              updates]) =>
      (new GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchangeBuilder()
            ..update(updates))
          .build();

  _$GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange._(
      {required this.G__typename,
      required this.publicKey,
      required this.sessionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        publicKey,
        'GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange',
        'publicKey');
    BuiltValueNullFieldError.checkNotNull(
        sessionId,
        'GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange',
        'sessionId');
  }

  @override
  GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange rebuild(
          void Function(
                  GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchangeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchangeBuilder
      toBuilder() =>
          new GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchangeBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange &&
        G__typename == other.G__typename &&
        publicKey == other.publicKey &&
        sessionId == other.sessionId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), publicKey.hashCode),
        sessionId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange')
          ..add('G__typename', G__typename)
          ..add('publicKey', publicKey)
          ..add('sessionId', sessionId))
        .toString();
  }
}

class GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchangeBuilder
    implements
        Builder<
            GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange,
            GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchangeBuilder> {
  _$GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _publicKey;
  String? get publicKey => _$this._publicKey;
  set publicKey(String? publicKey) => _$this._publicKey = publicKey;

  String? _sessionId;
  String? get sessionId => _$this._sessionId;
  set sessionId(String? sessionId) => _$this._sessionId = sessionId;

  GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchangeBuilder() {
    GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange
        ._initializeBuilder(this);
  }

  GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchangeBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _publicKey = $v.publicKey;
      _sessionId = $v.sessionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange;
  }

  @override
  void update(
      void Function(
              GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchangeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange build() {
    final _$result = _$v ??
        new _$GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange
                ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange',
                'G__typename'),
            publicKey: BuiltValueNullFieldError.checkNotNull(
                publicKey,
                'GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange',
                'publicKey'),
            sessionId: BuiltValueNullFieldError.checkNotNull(
                sessionId,
                'GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange',
                'sessionId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
