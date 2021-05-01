// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post-message.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPostMessageData> _$gPostMessageDataSerializer =
    new _$GPostMessageDataSerializer();
Serializer<GPostMessageData_postMessage>
    _$gPostMessageDataPostMessageSerializer =
    new _$GPostMessageData_postMessageSerializer();

class _$GPostMessageDataSerializer
    implements StructuredSerializer<GPostMessageData> {
  @override
  final Iterable<Type> types = const [GPostMessageData, _$GPostMessageData];
  @override
  final String wireName = 'GPostMessageData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPostMessageData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.postMessage;
    if (value != null) {
      result
        ..add('postMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GPostMessageData_postMessage)));
    }
    return result;
  }

  @override
  GPostMessageData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostMessageDataBuilder();

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
        case 'postMessage':
          result.postMessage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GPostMessageData_postMessage))!
              as GPostMessageData_postMessage);
          break;
      }
    }

    return result.build();
  }
}

class _$GPostMessageData_postMessageSerializer
    implements StructuredSerializer<GPostMessageData_postMessage> {
  @override
  final Iterable<Type> types = const [
    GPostMessageData_postMessage,
    _$GPostMessageData_postMessage
  ];
  @override
  final String wireName = 'GPostMessageData_postMessage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostMessageData_postMessage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'senderId',
      serializers.serialize(object.senderId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GPostMessageData_postMessage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostMessageData_postMessageBuilder();

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
        case 'senderId':
          result.senderId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GPostMessageData extends GPostMessageData {
  @override
  final String G__typename;
  @override
  final GPostMessageData_postMessage? postMessage;

  factory _$GPostMessageData(
          [void Function(GPostMessageDataBuilder)? updates]) =>
      (new GPostMessageDataBuilder()..update(updates)).build();

  _$GPostMessageData._({required this.G__typename, this.postMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GPostMessageData', 'G__typename');
  }

  @override
  GPostMessageData rebuild(void Function(GPostMessageDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostMessageDataBuilder toBuilder() =>
      new GPostMessageDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostMessageData &&
        G__typename == other.G__typename &&
        postMessage == other.postMessage;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), postMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GPostMessageData')
          ..add('G__typename', G__typename)
          ..add('postMessage', postMessage))
        .toString();
  }
}

class GPostMessageDataBuilder
    implements Builder<GPostMessageData, GPostMessageDataBuilder> {
  _$GPostMessageData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPostMessageData_postMessageBuilder? _postMessage;
  GPostMessageData_postMessageBuilder get postMessage =>
      _$this._postMessage ??= new GPostMessageData_postMessageBuilder();
  set postMessage(GPostMessageData_postMessageBuilder? postMessage) =>
      _$this._postMessage = postMessage;

  GPostMessageDataBuilder() {
    GPostMessageData._initializeBuilder(this);
  }

  GPostMessageDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _postMessage = $v.postMessage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostMessageData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostMessageData;
  }

  @override
  void update(void Function(GPostMessageDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GPostMessageData build() {
    _$GPostMessageData _$result;
    try {
      _$result = _$v ??
          new _$GPostMessageData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GPostMessageData', 'G__typename'),
              postMessage: _postMessage?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postMessage';
        _postMessage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GPostMessageData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPostMessageData_postMessage extends GPostMessageData_postMessage {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String senderId;

  factory _$GPostMessageData_postMessage(
          [void Function(GPostMessageData_postMessageBuilder)? updates]) =>
      (new GPostMessageData_postMessageBuilder()..update(updates)).build();

  _$GPostMessageData_postMessage._(
      {required this.G__typename, required this.id, required this.senderId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GPostMessageData_postMessage', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GPostMessageData_postMessage', 'id');
    BuiltValueNullFieldError.checkNotNull(
        senderId, 'GPostMessageData_postMessage', 'senderId');
  }

  @override
  GPostMessageData_postMessage rebuild(
          void Function(GPostMessageData_postMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostMessageData_postMessageBuilder toBuilder() =>
      new GPostMessageData_postMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostMessageData_postMessage &&
        G__typename == other.G__typename &&
        id == other.id &&
        senderId == other.senderId;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), senderId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GPostMessageData_postMessage')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('senderId', senderId))
        .toString();
  }
}

class GPostMessageData_postMessageBuilder
    implements
        Builder<GPostMessageData_postMessage,
            GPostMessageData_postMessageBuilder> {
  _$GPostMessageData_postMessage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _senderId;
  String? get senderId => _$this._senderId;
  set senderId(String? senderId) => _$this._senderId = senderId;

  GPostMessageData_postMessageBuilder() {
    GPostMessageData_postMessage._initializeBuilder(this);
  }

  GPostMessageData_postMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _senderId = $v.senderId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostMessageData_postMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostMessageData_postMessage;
  }

  @override
  void update(void Function(GPostMessageData_postMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GPostMessageData_postMessage build() {
    final _$result = _$v ??
        new _$GPostMessageData_postMessage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GPostMessageData_postMessage', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GPostMessageData_postMessage', 'id'),
            senderId: BuiltValueNullFieldError.checkNotNull(
                senderId, 'GPostMessageData_postMessage', 'senderId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
