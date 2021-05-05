// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh-token.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRefresthTokenData> _$gRefresthTokenDataSerializer =
    new _$GRefresthTokenDataSerializer();
Serializer<GRefresthTokenData_refreshToken>
    _$gRefresthTokenDataRefreshTokenSerializer =
    new _$GRefresthTokenData_refreshTokenSerializer();

class _$GRefresthTokenDataSerializer
    implements StructuredSerializer<GRefresthTokenData> {
  @override
  final Iterable<Type> types = const [GRefresthTokenData, _$GRefresthTokenData];
  @override
  final String wireName = 'GRefresthTokenData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRefresthTokenData object,
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
            specifiedType: const FullType(GRefresthTokenData_refreshToken)));
    }
    return result;
  }

  @override
  GRefresthTokenData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRefresthTokenDataBuilder();

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
                      const FullType(GRefresthTokenData_refreshToken))!
              as GRefresthTokenData_refreshToken);
          break;
      }
    }

    return result.build();
  }
}

class _$GRefresthTokenData_refreshTokenSerializer
    implements StructuredSerializer<GRefresthTokenData_refreshToken> {
  @override
  final Iterable<Type> types = const [
    GRefresthTokenData_refreshToken,
    _$GRefresthTokenData_refreshToken
  ];
  @override
  final String wireName = 'GRefresthTokenData_refreshToken';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRefresthTokenData_refreshToken object,
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
  GRefresthTokenData_refreshToken deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRefresthTokenData_refreshTokenBuilder();

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

class _$GRefresthTokenData extends GRefresthTokenData {
  @override
  final String G__typename;
  @override
  final GRefresthTokenData_refreshToken? refreshToken;

  factory _$GRefresthTokenData(
          [void Function(GRefresthTokenDataBuilder)? updates]) =>
      (new GRefresthTokenDataBuilder()..update(updates)).build();

  _$GRefresthTokenData._({required this.G__typename, this.refreshToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRefresthTokenData', 'G__typename');
  }

  @override
  GRefresthTokenData rebuild(
          void Function(GRefresthTokenDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRefresthTokenDataBuilder toBuilder() =>
      new GRefresthTokenDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRefresthTokenData &&
        G__typename == other.G__typename &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), refreshToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRefresthTokenData')
          ..add('G__typename', G__typename)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class GRefresthTokenDataBuilder
    implements Builder<GRefresthTokenData, GRefresthTokenDataBuilder> {
  _$GRefresthTokenData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GRefresthTokenData_refreshTokenBuilder? _refreshToken;
  GRefresthTokenData_refreshTokenBuilder get refreshToken =>
      _$this._refreshToken ??= new GRefresthTokenData_refreshTokenBuilder();
  set refreshToken(GRefresthTokenData_refreshTokenBuilder? refreshToken) =>
      _$this._refreshToken = refreshToken;

  GRefresthTokenDataBuilder() {
    GRefresthTokenData._initializeBuilder(this);
  }

  GRefresthTokenDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _refreshToken = $v.refreshToken?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRefresthTokenData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRefresthTokenData;
  }

  @override
  void update(void Function(GRefresthTokenDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRefresthTokenData build() {
    _$GRefresthTokenData _$result;
    try {
      _$result = _$v ??
          new _$GRefresthTokenData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GRefresthTokenData', 'G__typename'),
              refreshToken: _refreshToken?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'refreshToken';
        _refreshToken?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GRefresthTokenData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRefresthTokenData_refreshToken
    extends GRefresthTokenData_refreshToken {
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

  factory _$GRefresthTokenData_refreshToken(
          [void Function(GRefresthTokenData_refreshTokenBuilder)? updates]) =>
      (new GRefresthTokenData_refreshTokenBuilder()..update(updates)).build();

  _$GRefresthTokenData_refreshToken._(
      {required this.G__typename,
      this.token,
      required this.hasError,
      this.errorCode,
      this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRefresthTokenData_refreshToken', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        hasError, 'GRefresthTokenData_refreshToken', 'hasError');
  }

  @override
  GRefresthTokenData_refreshToken rebuild(
          void Function(GRefresthTokenData_refreshTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRefresthTokenData_refreshTokenBuilder toBuilder() =>
      new GRefresthTokenData_refreshTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRefresthTokenData_refreshToken &&
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
    return (newBuiltValueToStringHelper('GRefresthTokenData_refreshToken')
          ..add('G__typename', G__typename)
          ..add('token', token)
          ..add('hasError', hasError)
          ..add('errorCode', errorCode)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GRefresthTokenData_refreshTokenBuilder
    implements
        Builder<GRefresthTokenData_refreshToken,
            GRefresthTokenData_refreshTokenBuilder> {
  _$GRefresthTokenData_refreshToken? _$v;

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

  GRefresthTokenData_refreshTokenBuilder() {
    GRefresthTokenData_refreshToken._initializeBuilder(this);
  }

  GRefresthTokenData_refreshTokenBuilder get _$this {
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
  void replace(GRefresthTokenData_refreshToken other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRefresthTokenData_refreshToken;
  }

  @override
  void update(void Function(GRefresthTokenData_refreshTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRefresthTokenData_refreshToken build() {
    final _$result = _$v ??
        new _$GRefresthTokenData_refreshToken._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GRefresthTokenData_refreshToken', 'G__typename'),
            token: token,
            hasError: BuiltValueNullFieldError.checkNotNull(
                hasError, 'GRefresthTokenData_refreshToken', 'hasError'),
            errorCode: errorCode,
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
