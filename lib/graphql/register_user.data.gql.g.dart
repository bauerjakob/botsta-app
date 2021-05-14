// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRegisterUserData> _$gRegisterUserDataSerializer =
    new _$GRegisterUserDataSerializer();
Serializer<GRegisterUserData_register> _$gRegisterUserDataRegisterSerializer =
    new _$GRegisterUserData_registerSerializer();

class _$GRegisterUserDataSerializer
    implements StructuredSerializer<GRegisterUserData> {
  @override
  final Iterable<Type> types = const [GRegisterUserData, _$GRegisterUserData];
  @override
  final String wireName = 'GRegisterUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRegisterUserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.register;
    if (value != null) {
      result
        ..add('register')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GRegisterUserData_register)));
    }
    return result;
  }

  @override
  GRegisterUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRegisterUserDataBuilder();

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
        case 'register':
          result.register.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GRegisterUserData_register))!
              as GRegisterUserData_register);
          break;
      }
    }

    return result.build();
  }
}

class _$GRegisterUserData_registerSerializer
    implements StructuredSerializer<GRegisterUserData_register> {
  @override
  final Iterable<Type> types = const [
    GRegisterUserData_register,
    _$GRegisterUserData_register
  ];
  @override
  final String wireName = 'GRegisterUserData_register';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRegisterUserData_register object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'hasError',
      serializers.serialize(object.hasError,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.token;
    if (value != null) {
      result
        ..add('token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refreshToken;
    if (value != null) {
      result
        ..add('refreshToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GRegisterUserData_register deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRegisterUserData_registerBuilder();

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
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'refreshToken':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hasError':
          result.hasError = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GRegisterUserData extends GRegisterUserData {
  @override
  final String G__typename;
  @override
  final GRegisterUserData_register? register;

  factory _$GRegisterUserData(
          [void Function(GRegisterUserDataBuilder)? updates]) =>
      (new GRegisterUserDataBuilder()..update(updates)).build();

  _$GRegisterUserData._({required this.G__typename, this.register})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRegisterUserData', 'G__typename');
  }

  @override
  GRegisterUserData rebuild(void Function(GRegisterUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRegisterUserDataBuilder toBuilder() =>
      new GRegisterUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRegisterUserData &&
        G__typename == other.G__typename &&
        register == other.register;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), register.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRegisterUserData')
          ..add('G__typename', G__typename)
          ..add('register', register))
        .toString();
  }
}

class GRegisterUserDataBuilder
    implements Builder<GRegisterUserData, GRegisterUserDataBuilder> {
  _$GRegisterUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GRegisterUserData_registerBuilder? _register;
  GRegisterUserData_registerBuilder get register =>
      _$this._register ??= new GRegisterUserData_registerBuilder();
  set register(GRegisterUserData_registerBuilder? register) =>
      _$this._register = register;

  GRegisterUserDataBuilder() {
    GRegisterUserData._initializeBuilder(this);
  }

  GRegisterUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _register = $v.register?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRegisterUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRegisterUserData;
  }

  @override
  void update(void Function(GRegisterUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRegisterUserData build() {
    _$GRegisterUserData _$result;
    try {
      _$result = _$v ??
          new _$GRegisterUserData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GRegisterUserData', 'G__typename'),
              register: _register?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'register';
        _register?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GRegisterUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRegisterUserData_register extends GRegisterUserData_register {
  @override
  final String G__typename;
  @override
  final String? token;
  @override
  final String? refreshToken;
  @override
  final bool hasError;

  factory _$GRegisterUserData_register(
          [void Function(GRegisterUserData_registerBuilder)? updates]) =>
      (new GRegisterUserData_registerBuilder()..update(updates)).build();

  _$GRegisterUserData_register._(
      {required this.G__typename,
      this.token,
      this.refreshToken,
      required this.hasError})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRegisterUserData_register', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        hasError, 'GRegisterUserData_register', 'hasError');
  }

  @override
  GRegisterUserData_register rebuild(
          void Function(GRegisterUserData_registerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRegisterUserData_registerBuilder toBuilder() =>
      new GRegisterUserData_registerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRegisterUserData_register &&
        G__typename == other.G__typename &&
        token == other.token &&
        refreshToken == other.refreshToken &&
        hasError == other.hasError;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), token.hashCode),
            refreshToken.hashCode),
        hasError.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRegisterUserData_register')
          ..add('G__typename', G__typename)
          ..add('token', token)
          ..add('refreshToken', refreshToken)
          ..add('hasError', hasError))
        .toString();
  }
}

class GRegisterUserData_registerBuilder
    implements
        Builder<GRegisterUserData_register, GRegisterUserData_registerBuilder> {
  _$GRegisterUserData_register? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  bool? _hasError;
  bool? get hasError => _$this._hasError;
  set hasError(bool? hasError) => _$this._hasError = hasError;

  GRegisterUserData_registerBuilder() {
    GRegisterUserData_register._initializeBuilder(this);
  }

  GRegisterUserData_registerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _token = $v.token;
      _refreshToken = $v.refreshToken;
      _hasError = $v.hasError;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRegisterUserData_register other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRegisterUserData_register;
  }

  @override
  void update(void Function(GRegisterUserData_registerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRegisterUserData_register build() {
    final _$result = _$v ??
        new _$GRegisterUserData_register._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GRegisterUserData_register', 'G__typename'),
            token: token,
            refreshToken: refreshToken,
            hasError: BuiltValueNullFieldError.checkNotNull(
                hasError, 'GRegisterUserData_register', 'hasError'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
