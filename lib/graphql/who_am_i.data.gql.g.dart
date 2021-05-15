// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'who_am_i.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GWhoAmIData> _$gWhoAmIDataSerializer = new _$GWhoAmIDataSerializer();
Serializer<GWhoAmIData_whoami> _$gWhoAmIDataWhoamiSerializer =
    new _$GWhoAmIData_whoamiSerializer();

class _$GWhoAmIDataSerializer implements StructuredSerializer<GWhoAmIData> {
  @override
  final Iterable<Type> types = const [GWhoAmIData, _$GWhoAmIData];
  @override
  final String wireName = 'GWhoAmIData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GWhoAmIData object,
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
            specifiedType: const FullType(GWhoAmIData_whoami)));
    }
    return result;
  }

  @override
  GWhoAmIData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GWhoAmIDataBuilder();

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
                  specifiedType: const FullType(GWhoAmIData_whoami))!
              as GWhoAmIData_whoami);
          break;
      }
    }

    return result.build();
  }
}

class _$GWhoAmIData_whoamiSerializer
    implements StructuredSerializer<GWhoAmIData_whoami> {
  @override
  final Iterable<Type> types = const [GWhoAmIData_whoami, _$GWhoAmIData_whoami];
  @override
  final String wireName = 'GWhoAmIData_whoami';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GWhoAmIData_whoami object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'isUser',
      serializers.serialize(object.isUser, specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GWhoAmIData_whoami deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GWhoAmIData_whoamiBuilder();

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
        case 'isUser':
          result.isUser = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GWhoAmIData extends GWhoAmIData {
  @override
  final String G__typename;
  @override
  final GWhoAmIData_whoami? whoami;

  factory _$GWhoAmIData([void Function(GWhoAmIDataBuilder)? updates]) =>
      (new GWhoAmIDataBuilder()..update(updates)).build();

  _$GWhoAmIData._({required this.G__typename, this.whoami}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GWhoAmIData', 'G__typename');
  }

  @override
  GWhoAmIData rebuild(void Function(GWhoAmIDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GWhoAmIDataBuilder toBuilder() => new GWhoAmIDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GWhoAmIData &&
        G__typename == other.G__typename &&
        whoami == other.whoami;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), whoami.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GWhoAmIData')
          ..add('G__typename', G__typename)
          ..add('whoami', whoami))
        .toString();
  }
}

class GWhoAmIDataBuilder implements Builder<GWhoAmIData, GWhoAmIDataBuilder> {
  _$GWhoAmIData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GWhoAmIData_whoamiBuilder? _whoami;
  GWhoAmIData_whoamiBuilder get whoami =>
      _$this._whoami ??= new GWhoAmIData_whoamiBuilder();
  set whoami(GWhoAmIData_whoamiBuilder? whoami) => _$this._whoami = whoami;

  GWhoAmIDataBuilder() {
    GWhoAmIData._initializeBuilder(this);
  }

  GWhoAmIDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _whoami = $v.whoami?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GWhoAmIData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GWhoAmIData;
  }

  @override
  void update(void Function(GWhoAmIDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GWhoAmIData build() {
    _$GWhoAmIData _$result;
    try {
      _$result = _$v ??
          new _$GWhoAmIData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GWhoAmIData', 'G__typename'),
              whoami: _whoami?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'whoami';
        _whoami?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GWhoAmIData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GWhoAmIData_whoami extends GWhoAmIData_whoami {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final bool isUser;

  factory _$GWhoAmIData_whoami(
          [void Function(GWhoAmIData_whoamiBuilder)? updates]) =>
      (new GWhoAmIData_whoamiBuilder()..update(updates)).build();

  _$GWhoAmIData_whoami._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.isUser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GWhoAmIData_whoami', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GWhoAmIData_whoami', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'GWhoAmIData_whoami', 'name');
    BuiltValueNullFieldError.checkNotNull(
        isUser, 'GWhoAmIData_whoami', 'isUser');
  }

  @override
  GWhoAmIData_whoami rebuild(
          void Function(GWhoAmIData_whoamiBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GWhoAmIData_whoamiBuilder toBuilder() =>
      new GWhoAmIData_whoamiBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GWhoAmIData_whoami &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        isUser == other.isUser;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), name.hashCode),
        isUser.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GWhoAmIData_whoami')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('isUser', isUser))
        .toString();
  }
}

class GWhoAmIData_whoamiBuilder
    implements Builder<GWhoAmIData_whoami, GWhoAmIData_whoamiBuilder> {
  _$GWhoAmIData_whoami? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _isUser;
  bool? get isUser => _$this._isUser;
  set isUser(bool? isUser) => _$this._isUser = isUser;

  GWhoAmIData_whoamiBuilder() {
    GWhoAmIData_whoami._initializeBuilder(this);
  }

  GWhoAmIData_whoamiBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _isUser = $v.isUser;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GWhoAmIData_whoami other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GWhoAmIData_whoami;
  }

  @override
  void update(void Function(GWhoAmIData_whoamiBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GWhoAmIData_whoami build() {
    final _$result = _$v ??
        new _$GWhoAmIData_whoami._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GWhoAmIData_whoami', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GWhoAmIData_whoami', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GWhoAmIData_whoami', 'name'),
            isUser: BuiltValueNullFieldError.checkNotNull(
                isUser, 'GWhoAmIData_whoami', 'isUser'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
