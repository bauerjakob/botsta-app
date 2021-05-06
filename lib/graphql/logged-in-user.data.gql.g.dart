// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logged-in-user.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLoggedInUserData> _$gLoggedInUserDataSerializer =
    new _$GLoggedInUserDataSerializer();
Serializer<GLoggedInUserData_whoami> _$gLoggedInUserDataWhoamiSerializer =
    new _$GLoggedInUserData_whoamiSerializer();

class _$GLoggedInUserDataSerializer
    implements StructuredSerializer<GLoggedInUserData> {
  @override
  final Iterable<Type> types = const [GLoggedInUserData, _$GLoggedInUserData];
  @override
  final String wireName = 'GLoggedInUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLoggedInUserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.whoami;
    if (value != null) {
      result
        ..add('whoami')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GLoggedInUserData_whoami)));
    }
    return result;
  }

  @override
  GLoggedInUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoggedInUserDataBuilder();

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
        case 'whoami':
          result.whoami.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GLoggedInUserData_whoami))!
              as GLoggedInUserData_whoami);
          break;
      }
    }

    return result.build();
  }
}

class _$GLoggedInUserData_whoamiSerializer
    implements StructuredSerializer<GLoggedInUserData_whoami> {
  @override
  final Iterable<Type> types = const [
    GLoggedInUserData_whoami,
    _$GLoggedInUserData_whoami
  ];
  @override
  final String wireName = 'GLoggedInUserData_whoami';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLoggedInUserData_whoami object,
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
  GLoggedInUserData_whoami deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoggedInUserData_whoamiBuilder();

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

class _$GLoggedInUserData extends GLoggedInUserData {
  @override
  final String G__typename;
  @override
  final GLoggedInUserData_whoami? whoami;

  factory _$GLoggedInUserData(
          [void Function(GLoggedInUserDataBuilder)? updates]) =>
      (new GLoggedInUserDataBuilder()..update(updates)).build();

  _$GLoggedInUserData._({required this.G__typename, this.whoami}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GLoggedInUserData', 'G__typename');
  }

  @override
  GLoggedInUserData rebuild(void Function(GLoggedInUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoggedInUserDataBuilder toBuilder() =>
      new GLoggedInUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoggedInUserData &&
        G__typename == other.G__typename &&
        whoami == other.whoami;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), whoami.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLoggedInUserData')
          ..add('G__typename', G__typename)
          ..add('whoami', whoami))
        .toString();
  }
}

class GLoggedInUserDataBuilder
    implements Builder<GLoggedInUserData, GLoggedInUserDataBuilder> {
  _$GLoggedInUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLoggedInUserData_whoamiBuilder? _whoami;
  GLoggedInUserData_whoamiBuilder get whoami =>
      _$this._whoami ??= new GLoggedInUserData_whoamiBuilder();
  set whoami(GLoggedInUserData_whoamiBuilder? whoami) =>
      _$this._whoami = whoami;

  GLoggedInUserDataBuilder() {
    GLoggedInUserData._initializeBuilder(this);
  }

  GLoggedInUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _whoami = $v.whoami?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoggedInUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoggedInUserData;
  }

  @override
  void update(void Function(GLoggedInUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLoggedInUserData build() {
    _$GLoggedInUserData _$result;
    try {
      _$result = _$v ??
          new _$GLoggedInUserData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GLoggedInUserData', 'G__typename'),
              whoami: _whoami?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'whoami';
        _whoami?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GLoggedInUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLoggedInUserData_whoami extends GLoggedInUserData_whoami {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String username;

  factory _$GLoggedInUserData_whoami(
          [void Function(GLoggedInUserData_whoamiBuilder)? updates]) =>
      (new GLoggedInUserData_whoamiBuilder()..update(updates)).build();

  _$GLoggedInUserData_whoami._(
      {required this.G__typename, required this.id, required this.username})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GLoggedInUserData_whoami', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GLoggedInUserData_whoami', 'id');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GLoggedInUserData_whoami', 'username');
  }

  @override
  GLoggedInUserData_whoami rebuild(
          void Function(GLoggedInUserData_whoamiBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoggedInUserData_whoamiBuilder toBuilder() =>
      new GLoggedInUserData_whoamiBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoggedInUserData_whoami &&
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
    return (newBuiltValueToStringHelper('GLoggedInUserData_whoami')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('username', username))
        .toString();
  }
}

class GLoggedInUserData_whoamiBuilder
    implements
        Builder<GLoggedInUserData_whoami, GLoggedInUserData_whoamiBuilder> {
  _$GLoggedInUserData_whoami? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  GLoggedInUserData_whoamiBuilder() {
    GLoggedInUserData_whoami._initializeBuilder(this);
  }

  GLoggedInUserData_whoamiBuilder get _$this {
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
  void replace(GLoggedInUserData_whoami other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoggedInUserData_whoami;
  }

  @override
  void update(void Function(GLoggedInUserData_whoamiBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLoggedInUserData_whoami build() {
    final _$result = _$v ??
        new _$GLoggedInUserData_whoami._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GLoggedInUserData_whoami', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GLoggedInUserData_whoami', 'id'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'GLoggedInUserData_whoami', 'username'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
