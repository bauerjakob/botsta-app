// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh-token.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRefreshTokenData> _$gRefreshTokenDataSerializer =
    new _$GRefreshTokenDataSerializer();
Serializer<GRefreshTokenData_refreshToken>
    _$gRefreshTokenDataRefreshTokenSerializer =
    new _$GRefreshTokenData_refreshTokenSerializer();

class _$GRefreshTokenDataSerializer
    implements StructuredSerializer<GRefreshTokenData> {
  @override
  final Iterable<Type> types = const [GRefreshTokenData, _$GRefreshTokenData];
  @override
  final String wireName = 'GRefreshTokenData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRefreshTokenData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.refreshToken;
    if (value != null) {
      result
        ..add('refreshToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GRefreshTokenData_refreshToken)));
    }
    return result;
  }

  @override
  GRefreshTokenData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRefreshTokenDataBuilder();

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
        case 'refreshToken':
          result.refreshToken.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GRefreshTokenData_refreshToken))!
              as GRefreshTokenData_refreshToken);
          break;
      }
    }

    return result.build();
  }
}

class _$GRefreshTokenData_refreshTokenSerializer
    implements StructuredSerializer<GRefreshTokenData_refreshToken> {
  @override
  final Iterable<Type> types = const [
    GRefreshTokenData_refreshToken,
    _$GRefreshTokenData_refreshToken
  ];
  @override
  final String wireName = 'GRefreshTokenData_refreshToken';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRefreshTokenData_refreshToken object,
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
    value = object.errorCode;
    if (value != null) {
      result
        ..add('errorCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GRefreshTokenData_refreshToken deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRefreshTokenData_refreshTokenBuilder();

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
        case 'hasError':
          result.hasError = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'errorCode':
          result.errorCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GRefreshTokenData extends GRefreshTokenData {
  @override
  final String G__typename;
  @override
  final GRefreshTokenData_refreshToken? refreshToken;

  factory _$GRefreshTokenData(
          [void Function(GRefreshTokenDataBuilder)? updates]) =>
      (new GRefreshTokenDataBuilder()..update(updates)).build();

  _$GRefreshTokenData._({required this.G__typename, this.refreshToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRefreshTokenData', 'G__typename');
  }

  @override
  GRefreshTokenData rebuild(void Function(GRefreshTokenDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRefreshTokenDataBuilder toBuilder() =>
      new GRefreshTokenDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRefreshTokenData &&
        G__typename == other.G__typename &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), refreshToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRefreshTokenData')
          ..add('G__typename', G__typename)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class GRefreshTokenDataBuilder
    implements Builder<GRefreshTokenData, GRefreshTokenDataBuilder> {
  _$GRefreshTokenData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GRefreshTokenData_refreshTokenBuilder? _refreshToken;
  GRefreshTokenData_refreshTokenBuilder get refreshToken =>
      _$this._refreshToken ??= new GRefreshTokenData_refreshTokenBuilder();
  set refreshToken(GRefreshTokenData_refreshTokenBuilder? refreshToken) =>
      _$this._refreshToken = refreshToken;

  GRefreshTokenDataBuilder() {
    GRefreshTokenData._initializeBuilder(this);
  }

  GRefreshTokenDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _refreshToken = $v.refreshToken?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRefreshTokenData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRefreshTokenData;
  }

  @override
  void update(void Function(GRefreshTokenDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRefreshTokenData build() {
    _$GRefreshTokenData _$result;
    try {
      _$result = _$v ??
          new _$GRefreshTokenData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GRefreshTokenData', 'G__typename'),
              refreshToken: _refreshToken?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'refreshToken';
        _refreshToken?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GRefreshTokenData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRefreshTokenData_refreshToken extends GRefreshTokenData_refreshToken {
  @override
  final String G__typename;
  @override
  final String? token;
  @override
  final bool hasError;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  factory _$GRefreshTokenData_refreshToken(
          [void Function(GRefreshTokenData_refreshTokenBuilder)? updates]) =>
      (new GRefreshTokenData_refreshTokenBuilder()..update(updates)).build();

  _$GRefreshTokenData_refreshToken._(
      {required this.G__typename,
      this.token,
      required this.hasError,
      this.errorCode,
      this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRefreshTokenData_refreshToken', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        hasError, 'GRefreshTokenData_refreshToken', 'hasError');
  }

  @override
  GRefreshTokenData_refreshToken rebuild(
          void Function(GRefreshTokenData_refreshTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRefreshTokenData_refreshTokenBuilder toBuilder() =>
      new GRefreshTokenData_refreshTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRefreshTokenData_refreshToken &&
        G__typename == other.G__typename &&
        token == other.token &&
        hasError == other.hasError &&
        errorCode == other.errorCode &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, G__typename.hashCode), token.hashCode),
                hasError.hashCode),
            errorCode.hashCode),
        errorMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRefreshTokenData_refreshToken')
          ..add('G__typename', G__typename)
          ..add('token', token)
          ..add('hasError', hasError)
          ..add('errorCode', errorCode)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GRefreshTokenData_refreshTokenBuilder
    implements
        Builder<GRefreshTokenData_refreshToken,
            GRefreshTokenData_refreshTokenBuilder> {
  _$GRefreshTokenData_refreshToken? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  bool? _hasError;
  bool? get hasError => _$this._hasError;
  set hasError(bool? hasError) => _$this._hasError = hasError;

  String? _errorCode;
  String? get errorCode => _$this._errorCode;
  set errorCode(String? errorCode) => _$this._errorCode = errorCode;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GRefreshTokenData_refreshTokenBuilder() {
    GRefreshTokenData_refreshToken._initializeBuilder(this);
  }

  GRefreshTokenData_refreshTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _token = $v.token;
      _hasError = $v.hasError;
      _errorCode = $v.errorCode;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRefreshTokenData_refreshToken other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRefreshTokenData_refreshToken;
  }

  @override
  void update(void Function(GRefreshTokenData_refreshTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRefreshTokenData_refreshToken build() {
    final _$result = _$v ??
        new _$GRefreshTokenData_refreshToken._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GRefreshTokenData_refreshToken', 'G__typename'),
            token: token,
            hasError: BuiltValueNullFieldError.checkNotNull(
                hasError, 'GRefreshTokenData_refreshToken', 'hasError'),
            errorCode: errorCode,
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
