// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_own_bots.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetOwnBotsData> _$gGetOwnBotsDataSerializer =
    new _$GGetOwnBotsDataSerializer();
Serializer<GGetOwnBotsData_getOwnBots> _$gGetOwnBotsDataGetOwnBotsSerializer =
    new _$GGetOwnBotsData_getOwnBotsSerializer();

class _$GGetOwnBotsDataSerializer
    implements StructuredSerializer<GGetOwnBotsData> {
  @override
  final Iterable<Type> types = const [GGetOwnBotsData, _$GGetOwnBotsData];
  @override
  final String wireName = 'GGetOwnBotsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetOwnBotsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getOwnBots;
    if (value != null) {
      result
        ..add('getOwnBots')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GGetOwnBotsData_getOwnBots)])));
    }
    return result;
  }

  @override
  GGetOwnBotsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetOwnBotsDataBuilder();

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
        case 'getOwnBots':
          result.getOwnBots.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetOwnBotsData_getOwnBots)
              ]))! as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetOwnBotsData_getOwnBotsSerializer
    implements StructuredSerializer<GGetOwnBotsData_getOwnBots> {
  @override
  final Iterable<Type> types = const [
    GGetOwnBotsData_getOwnBots,
    _$GGetOwnBotsData_getOwnBots
  ];
  @override
  final String wireName = 'GGetOwnBotsData_getOwnBots';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetOwnBotsData_getOwnBots object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'isPublic',
      serializers.serialize(object.isPublic,
          specifiedType: const FullType(bool)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetOwnBotsData_getOwnBots deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetOwnBotsData_getOwnBotsBuilder();

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
        case 'isPublic':
          result.isPublic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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

class _$GGetOwnBotsData extends GGetOwnBotsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetOwnBotsData_getOwnBots>? getOwnBots;

  factory _$GGetOwnBotsData([void Function(GGetOwnBotsDataBuilder)? updates]) =>
      (new GGetOwnBotsDataBuilder()..update(updates)).build();

  _$GGetOwnBotsData._({required this.G__typename, this.getOwnBots})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetOwnBotsData', 'G__typename');
  }

  @override
  GGetOwnBotsData rebuild(void Function(GGetOwnBotsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetOwnBotsDataBuilder toBuilder() =>
      new GGetOwnBotsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetOwnBotsData &&
        G__typename == other.G__typename &&
        getOwnBots == other.getOwnBots;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), getOwnBots.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetOwnBotsData')
          ..add('G__typename', G__typename)
          ..add('getOwnBots', getOwnBots))
        .toString();
  }
}

class GGetOwnBotsDataBuilder
    implements Builder<GGetOwnBotsData, GGetOwnBotsDataBuilder> {
  _$GGetOwnBotsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetOwnBotsData_getOwnBots>? _getOwnBots;
  ListBuilder<GGetOwnBotsData_getOwnBots> get getOwnBots =>
      _$this._getOwnBots ??= new ListBuilder<GGetOwnBotsData_getOwnBots>();
  set getOwnBots(ListBuilder<GGetOwnBotsData_getOwnBots>? getOwnBots) =>
      _$this._getOwnBots = getOwnBots;

  GGetOwnBotsDataBuilder() {
    GGetOwnBotsData._initializeBuilder(this);
  }

  GGetOwnBotsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getOwnBots = $v.getOwnBots?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetOwnBotsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetOwnBotsData;
  }

  @override
  void update(void Function(GGetOwnBotsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetOwnBotsData build() {
    _$GGetOwnBotsData _$result;
    try {
      _$result = _$v ??
          new _$GGetOwnBotsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetOwnBotsData', 'G__typename'),
              getOwnBots: _getOwnBots?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getOwnBots';
        _getOwnBots?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetOwnBotsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetOwnBotsData_getOwnBots extends GGetOwnBotsData_getOwnBots {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final bool isPublic;
  @override
  final String name;

  factory _$GGetOwnBotsData_getOwnBots(
          [void Function(GGetOwnBotsData_getOwnBotsBuilder)? updates]) =>
      (new GGetOwnBotsData_getOwnBotsBuilder()..update(updates)).build();

  _$GGetOwnBotsData_getOwnBots._(
      {required this.G__typename,
      required this.id,
      required this.isPublic,
      required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetOwnBotsData_getOwnBots', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetOwnBotsData_getOwnBots', 'id');
    BuiltValueNullFieldError.checkNotNull(
        isPublic, 'GGetOwnBotsData_getOwnBots', 'isPublic');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetOwnBotsData_getOwnBots', 'name');
  }

  @override
  GGetOwnBotsData_getOwnBots rebuild(
          void Function(GGetOwnBotsData_getOwnBotsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetOwnBotsData_getOwnBotsBuilder toBuilder() =>
      new GGetOwnBotsData_getOwnBotsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetOwnBotsData_getOwnBots &&
        G__typename == other.G__typename &&
        id == other.id &&
        isPublic == other.isPublic &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), isPublic.hashCode),
        name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetOwnBotsData_getOwnBots')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('isPublic', isPublic)
          ..add('name', name))
        .toString();
  }
}

class GGetOwnBotsData_getOwnBotsBuilder
    implements
        Builder<GGetOwnBotsData_getOwnBots, GGetOwnBotsData_getOwnBotsBuilder> {
  _$GGetOwnBotsData_getOwnBots? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetOwnBotsData_getOwnBotsBuilder() {
    GGetOwnBotsData_getOwnBots._initializeBuilder(this);
  }

  GGetOwnBotsData_getOwnBotsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _isPublic = $v.isPublic;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetOwnBotsData_getOwnBots other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetOwnBotsData_getOwnBots;
  }

  @override
  void update(void Function(GGetOwnBotsData_getOwnBotsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetOwnBotsData_getOwnBots build() {
    final _$result = _$v ??
        new _$GGetOwnBotsData_getOwnBots._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GGetOwnBotsData_getOwnBots', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetOwnBotsData_getOwnBots', 'id'),
            isPublic: BuiltValueNullFieldError.checkNotNull(
                isPublic, 'GGetOwnBotsData_getOwnBots', 'isPublic'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GGetOwnBotsData_getOwnBots', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
