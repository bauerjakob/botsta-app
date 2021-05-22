// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_chatroom_group.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateChatroomGroupData> _$gCreateChatroomGroupDataSerializer =
    new _$GCreateChatroomGroupDataSerializer();
Serializer<GCreateChatroomGroupData_newChatroomGroup>
    _$gCreateChatroomGroupDataNewChatroomGroupSerializer =
    new _$GCreateChatroomGroupData_newChatroomGroupSerializer();

class _$GCreateChatroomGroupDataSerializer
    implements StructuredSerializer<GCreateChatroomGroupData> {
  @override
  final Iterable<Type> types = const [
    GCreateChatroomGroupData,
    _$GCreateChatroomGroupData
  ];
  @override
  final String wireName = 'GCreateChatroomGroupData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateChatroomGroupData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.newChatroomGroup;
    if (value != null) {
      result
        ..add('newChatroomGroup')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GCreateChatroomGroupData_newChatroomGroup)));
    }
    return result;
  }

  @override
  GCreateChatroomGroupData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateChatroomGroupDataBuilder();

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
        case 'newChatroomGroup':
          result.newChatroomGroup.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCreateChatroomGroupData_newChatroomGroup))!
              as GCreateChatroomGroupData_newChatroomGroup);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateChatroomGroupData_newChatroomGroupSerializer
    implements StructuredSerializer<GCreateChatroomGroupData_newChatroomGroup> {
  @override
  final Iterable<Type> types = const [
    GCreateChatroomGroupData_newChatroomGroup,
    _$GCreateChatroomGroupData_newChatroomGroup
  ];
  @override
  final String wireName = 'GCreateChatroomGroupData_newChatroomGroup';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateChatroomGroupData_newChatroomGroup object,
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
  GCreateChatroomGroupData_newChatroomGroup deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateChatroomGroupData_newChatroomGroupBuilder();

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

class _$GCreateChatroomGroupData extends GCreateChatroomGroupData {
  @override
  final String G__typename;
  @override
  final GCreateChatroomGroupData_newChatroomGroup? newChatroomGroup;

  factory _$GCreateChatroomGroupData(
          [void Function(GCreateChatroomGroupDataBuilder)? updates]) =>
      (new GCreateChatroomGroupDataBuilder()..update(updates)).build();

  _$GCreateChatroomGroupData._(
      {required this.G__typename, this.newChatroomGroup})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCreateChatroomGroupData', 'G__typename');
  }

  @override
  GCreateChatroomGroupData rebuild(
          void Function(GCreateChatroomGroupDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateChatroomGroupDataBuilder toBuilder() =>
      new GCreateChatroomGroupDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateChatroomGroupData &&
        G__typename == other.G__typename &&
        newChatroomGroup == other.newChatroomGroup;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), newChatroomGroup.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateChatroomGroupData')
          ..add('G__typename', G__typename)
          ..add('newChatroomGroup', newChatroomGroup))
        .toString();
  }
}

class GCreateChatroomGroupDataBuilder
    implements
        Builder<GCreateChatroomGroupData, GCreateChatroomGroupDataBuilder> {
  _$GCreateChatroomGroupData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateChatroomGroupData_newChatroomGroupBuilder? _newChatroomGroup;
  GCreateChatroomGroupData_newChatroomGroupBuilder get newChatroomGroup =>
      _$this._newChatroomGroup ??=
          new GCreateChatroomGroupData_newChatroomGroupBuilder();
  set newChatroomGroup(
          GCreateChatroomGroupData_newChatroomGroupBuilder? newChatroomGroup) =>
      _$this._newChatroomGroup = newChatroomGroup;

  GCreateChatroomGroupDataBuilder() {
    GCreateChatroomGroupData._initializeBuilder(this);
  }

  GCreateChatroomGroupDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _newChatroomGroup = $v.newChatroomGroup?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateChatroomGroupData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateChatroomGroupData;
  }

  @override
  void update(void Function(GCreateChatroomGroupDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateChatroomGroupData build() {
    _$GCreateChatroomGroupData _$result;
    try {
      _$result = _$v ??
          new _$GCreateChatroomGroupData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GCreateChatroomGroupData', 'G__typename'),
              newChatroomGroup: _newChatroomGroup?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'newChatroomGroup';
        _newChatroomGroup?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreateChatroomGroupData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateChatroomGroupData_newChatroomGroup
    extends GCreateChatroomGroupData_newChatroomGroup {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? name;

  factory _$GCreateChatroomGroupData_newChatroomGroup(
          [void Function(GCreateChatroomGroupData_newChatroomGroupBuilder)?
              updates]) =>
      (new GCreateChatroomGroupData_newChatroomGroupBuilder()..update(updates))
          .build();

  _$GCreateChatroomGroupData_newChatroomGroup._(
      {required this.G__typename, required this.id, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GCreateChatroomGroupData_newChatroomGroup', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GCreateChatroomGroupData_newChatroomGroup', 'id');
  }

  @override
  GCreateChatroomGroupData_newChatroomGroup rebuild(
          void Function(GCreateChatroomGroupData_newChatroomGroupBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateChatroomGroupData_newChatroomGroupBuilder toBuilder() =>
      new GCreateChatroomGroupData_newChatroomGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateChatroomGroupData_newChatroomGroup &&
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
            'GCreateChatroomGroupData_newChatroomGroup')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GCreateChatroomGroupData_newChatroomGroupBuilder
    implements
        Builder<GCreateChatroomGroupData_newChatroomGroup,
            GCreateChatroomGroupData_newChatroomGroupBuilder> {
  _$GCreateChatroomGroupData_newChatroomGroup? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GCreateChatroomGroupData_newChatroomGroupBuilder() {
    GCreateChatroomGroupData_newChatroomGroup._initializeBuilder(this);
  }

  GCreateChatroomGroupData_newChatroomGroupBuilder get _$this {
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
  void replace(GCreateChatroomGroupData_newChatroomGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateChatroomGroupData_newChatroomGroup;
  }

  @override
  void update(
      void Function(GCreateChatroomGroupData_newChatroomGroupBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateChatroomGroupData_newChatroomGroup build() {
    final _$result = _$v ??
        new _$GCreateChatroomGroupData_newChatroomGroup._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GCreateChatroomGroupData_newChatroomGroup', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GCreateChatroomGroupData_newChatroomGroup', 'id'),
            name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
