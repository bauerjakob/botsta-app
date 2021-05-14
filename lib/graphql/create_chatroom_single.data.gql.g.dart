// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_chatroom_single.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateChatroomSingleData> _$gCreateChatroomSingleDataSerializer =
    new _$GCreateChatroomSingleDataSerializer();
Serializer<GCreateChatroomSingleData_newChatroomSingle>
    _$gCreateChatroomSingleDataNewChatroomSingleSerializer =
    new _$GCreateChatroomSingleData_newChatroomSingleSerializer();

class _$GCreateChatroomSingleDataSerializer
    implements StructuredSerializer<GCreateChatroomSingleData> {
  @override
  final Iterable<Type> types = const [
    GCreateChatroomSingleData,
    _$GCreateChatroomSingleData
  ];
  @override
  final String wireName = 'GCreateChatroomSingleData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateChatroomSingleData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.newChatroomSingle;
    if (value != null) {
      result
        ..add('newChatroomSingle')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GCreateChatroomSingleData_newChatroomSingle)));
    }
    return result;
  }

  @override
  GCreateChatroomSingleData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateChatroomSingleDataBuilder();

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
        case 'newChatroomSingle':
          result.newChatroomSingle.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCreateChatroomSingleData_newChatroomSingle))!
              as GCreateChatroomSingleData_newChatroomSingle);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateChatroomSingleData_newChatroomSingleSerializer
    implements
        StructuredSerializer<GCreateChatroomSingleData_newChatroomSingle> {
  @override
  final Iterable<Type> types = const [
    GCreateChatroomSingleData_newChatroomSingle,
    _$GCreateChatroomSingleData_newChatroomSingle
  ];
  @override
  final String wireName = 'GCreateChatroomSingleData_newChatroomSingle';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCreateChatroomSingleData_newChatroomSingle object,
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
    return result;
  }

  @override
  GCreateChatroomSingleData_newChatroomSingle deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateChatroomSingleData_newChatroomSingleBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GCreateChatroomSingleData extends GCreateChatroomSingleData {
  @override
  final String G__typename;
  @override
  final GCreateChatroomSingleData_newChatroomSingle? newChatroomSingle;

  factory _$GCreateChatroomSingleData(
          [void Function(GCreateChatroomSingleDataBuilder)? updates]) =>
      (new GCreateChatroomSingleDataBuilder()..update(updates)).build();

  _$GCreateChatroomSingleData._(
      {required this.G__typename, this.newChatroomSingle})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCreateChatroomSingleData', 'G__typename');
  }

  @override
  GCreateChatroomSingleData rebuild(
          void Function(GCreateChatroomSingleDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateChatroomSingleDataBuilder toBuilder() =>
      new GCreateChatroomSingleDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateChatroomSingleData &&
        G__typename == other.G__typename &&
        newChatroomSingle == other.newChatroomSingle;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), newChatroomSingle.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateChatroomSingleData')
          ..add('G__typename', G__typename)
          ..add('newChatroomSingle', newChatroomSingle))
        .toString();
  }
}

class GCreateChatroomSingleDataBuilder
    implements
        Builder<GCreateChatroomSingleData, GCreateChatroomSingleDataBuilder> {
  _$GCreateChatroomSingleData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateChatroomSingleData_newChatroomSingleBuilder? _newChatroomSingle;
  GCreateChatroomSingleData_newChatroomSingleBuilder get newChatroomSingle =>
      _$this._newChatroomSingle ??=
          new GCreateChatroomSingleData_newChatroomSingleBuilder();
  set newChatroomSingle(
          GCreateChatroomSingleData_newChatroomSingleBuilder?
              newChatroomSingle) =>
      _$this._newChatroomSingle = newChatroomSingle;

  GCreateChatroomSingleDataBuilder() {
    GCreateChatroomSingleData._initializeBuilder(this);
  }

  GCreateChatroomSingleDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _newChatroomSingle = $v.newChatroomSingle?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateChatroomSingleData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateChatroomSingleData;
  }

  @override
  void update(void Function(GCreateChatroomSingleDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateChatroomSingleData build() {
    _$GCreateChatroomSingleData _$result;
    try {
      _$result = _$v ??
          new _$GCreateChatroomSingleData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GCreateChatroomSingleData', 'G__typename'),
              newChatroomSingle: _newChatroomSingle?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'newChatroomSingle';
        _newChatroomSingle?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreateChatroomSingleData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateChatroomSingleData_newChatroomSingle
    extends GCreateChatroomSingleData_newChatroomSingle {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? name;

  factory _$GCreateChatroomSingleData_newChatroomSingle(
          [void Function(GCreateChatroomSingleData_newChatroomSingleBuilder)?
              updates]) =>
      (new GCreateChatroomSingleData_newChatroomSingleBuilder()
            ..update(updates))
          .build();

  _$GCreateChatroomSingleData_newChatroomSingle._(
      {required this.G__typename, required this.id, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GCreateChatroomSingleData_newChatroomSingle', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GCreateChatroomSingleData_newChatroomSingle', 'id');
  }

  @override
  GCreateChatroomSingleData_newChatroomSingle rebuild(
          void Function(GCreateChatroomSingleData_newChatroomSingleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateChatroomSingleData_newChatroomSingleBuilder toBuilder() =>
      new GCreateChatroomSingleData_newChatroomSingleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateChatroomSingleData_newChatroomSingle &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GCreateChatroomSingleData_newChatroomSingle')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GCreateChatroomSingleData_newChatroomSingleBuilder
    implements
        Builder<GCreateChatroomSingleData_newChatroomSingle,
            GCreateChatroomSingleData_newChatroomSingleBuilder> {
  _$GCreateChatroomSingleData_newChatroomSingle? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GCreateChatroomSingleData_newChatroomSingleBuilder() {
    GCreateChatroomSingleData_newChatroomSingle._initializeBuilder(this);
  }

  GCreateChatroomSingleData_newChatroomSingleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateChatroomSingleData_newChatroomSingle other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateChatroomSingleData_newChatroomSingle;
  }

  @override
  void update(
      void Function(GCreateChatroomSingleData_newChatroomSingleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateChatroomSingleData_newChatroomSingle build() {
    final _$result = _$v ??
        new _$GCreateChatroomSingleData_newChatroomSingle._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GCreateChatroomSingleData_newChatroomSingle', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GCreateChatroomSingleData_newChatroomSingle', 'id'),
            name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
