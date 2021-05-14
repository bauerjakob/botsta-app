// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_users.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetAllUsersData> _$gGetAllUsersDataSerializer =
    new _$GGetAllUsersDataSerializer();
Serializer<GGetAllUsersData_allUsers> _$gGetAllUsersDataAllUsersSerializer =
    new _$GGetAllUsersData_allUsersSerializer();

class _$GGetAllUsersDataSerializer
    implements StructuredSerializer<GGetAllUsersData> {
  @override
  final Iterable<Type> types = const [GGetAllUsersData, _$GGetAllUsersData];
  @override
  final String wireName = 'GGetAllUsersData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetAllUsersData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.allUsers;
    if (value != null) {
      result
        ..add('allUsers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GGetAllUsersData_allUsers)])));
    }
    return result;
  }

  @override
  GGetAllUsersData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetAllUsersDataBuilder();

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
        case 'allUsers':
          result.allUsers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetAllUsersData_allUsers)
              ]))! as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAllUsersData_allUsersSerializer
    implements StructuredSerializer<GGetAllUsersData_allUsers> {
  @override
  final Iterable<Type> types = const [
    GGetAllUsersData_allUsers,
    _$GGetAllUsersData_allUsers
  ];
  @override
  final String wireName = 'GGetAllUsersData_allUsers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetAllUsersData_allUsers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetAllUsersData_allUsers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetAllUsersData_allUsersBuilder();

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
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAllUsersData extends GGetAllUsersData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetAllUsersData_allUsers>? allUsers;

  factory _$GGetAllUsersData(
          [void Function(GGetAllUsersDataBuilder)? updates]) =>
      (new GGetAllUsersDataBuilder()..update(updates)).build();

  _$GGetAllUsersData._({required this.G__typename, this.allUsers}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetAllUsersData', 'G__typename');
  }

  @override
  GGetAllUsersData rebuild(void Function(GGetAllUsersDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAllUsersDataBuilder toBuilder() =>
      new GGetAllUsersDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAllUsersData &&
        G__typename == other.G__typename &&
        allUsers == other.allUsers;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), allUsers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetAllUsersData')
          ..add('G__typename', G__typename)
          ..add('allUsers', allUsers))
        .toString();
  }
}

class GGetAllUsersDataBuilder
    implements Builder<GGetAllUsersData, GGetAllUsersDataBuilder> {
  _$GGetAllUsersData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetAllUsersData_allUsers>? _allUsers;
  ListBuilder<GGetAllUsersData_allUsers> get allUsers =>
      _$this._allUsers ??= new ListBuilder<GGetAllUsersData_allUsers>();
  set allUsers(ListBuilder<GGetAllUsersData_allUsers>? allUsers) =>
      _$this._allUsers = allUsers;

  GGetAllUsersDataBuilder() {
    GGetAllUsersData._initializeBuilder(this);
  }

  GGetAllUsersDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _allUsers = $v.allUsers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAllUsersData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAllUsersData;
  }

  @override
  void update(void Function(GGetAllUsersDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetAllUsersData build() {
    _$GGetAllUsersData _$result;
    try {
      _$result = _$v ??
          new _$GGetAllUsersData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetAllUsersData', 'G__typename'),
              allUsers: _allUsers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allUsers';
        _allUsers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetAllUsersData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetAllUsersData_allUsers extends GGetAllUsersData_allUsers {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String username;

  factory _$GGetAllUsersData_allUsers(
          [void Function(GGetAllUsersData_allUsersBuilder)? updates]) =>
      (new GGetAllUsersData_allUsersBuilder()..update(updates)).build();

  _$GGetAllUsersData_allUsers._(
      {required this.G__typename, required this.id, required this.username})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetAllUsersData_allUsers', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetAllUsersData_allUsers', 'id');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GGetAllUsersData_allUsers', 'username');
  }

  @override
  GGetAllUsersData_allUsers rebuild(
          void Function(GGetAllUsersData_allUsersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAllUsersData_allUsersBuilder toBuilder() =>
      new GGetAllUsersData_allUsersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAllUsersData_allUsers &&
        G__typename == other.G__typename &&
        id == other.id &&
        username == other.username;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), username.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetAllUsersData_allUsers')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('username', username))
        .toString();
  }
}

class GGetAllUsersData_allUsersBuilder
    implements
        Builder<GGetAllUsersData_allUsers, GGetAllUsersData_allUsersBuilder> {
  _$GGetAllUsersData_allUsers? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  GGetAllUsersData_allUsersBuilder() {
    GGetAllUsersData_allUsers._initializeBuilder(this);
  }

  GGetAllUsersData_allUsersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAllUsersData_allUsers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAllUsersData_allUsers;
  }

  @override
  void update(void Function(GGetAllUsersData_allUsersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetAllUsersData_allUsers build() {
    final _$result = _$v ??
        new _$GGetAllUsersData_allUsers._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GGetAllUsersData_allUsers', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetAllUsersData_allUsers', 'id'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'GGetAllUsersData_allUsers', 'username'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
