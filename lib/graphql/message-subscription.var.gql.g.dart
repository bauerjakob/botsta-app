// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message-subscription.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMessageSubscriptionVars> _$gMessageSubscriptionVarsSerializer =
    new _$GMessageSubscriptionVarsSerializer();

class _$GMessageSubscriptionVarsSerializer
    implements StructuredSerializer<GMessageSubscriptionVars> {
  @override
  final Iterable<Type> types = const [
    GMessageSubscriptionVars,
    _$GMessageSubscriptionVars
  ];
  @override
  final String wireName = 'GMessageSubscriptionVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMessageSubscriptionVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'refreshToken',
      serializers.serialize(object.refreshToken,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GMessageSubscriptionVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMessageSubscriptionVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'refreshToken':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GMessageSubscriptionVars extends GMessageSubscriptionVars {
  @override
  final String refreshToken;

  factory _$GMessageSubscriptionVars(
          [void Function(GMessageSubscriptionVarsBuilder)? updates]) =>
      (new GMessageSubscriptionVarsBuilder()..update(updates)).build();

  _$GMessageSubscriptionVars._({required this.refreshToken}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        refreshToken, 'GMessageSubscriptionVars', 'refreshToken');
  }

  @override
  GMessageSubscriptionVars rebuild(
          void Function(GMessageSubscriptionVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMessageSubscriptionVarsBuilder toBuilder() =>
      new GMessageSubscriptionVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMessageSubscriptionVars &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    return $jf($jc(0, refreshToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GMessageSubscriptionVars')
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class GMessageSubscriptionVarsBuilder
    implements
        Builder<GMessageSubscriptionVars, GMessageSubscriptionVarsBuilder> {
  _$GMessageSubscriptionVars? _$v;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  GMessageSubscriptionVarsBuilder();

  GMessageSubscriptionVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMessageSubscriptionVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMessageSubscriptionVars;
  }

  @override
  void update(void Function(GMessageSubscriptionVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GMessageSubscriptionVars build() {
    final _$result = _$v ??
        new _$GMessageSubscriptionVars._(
            refreshToken: BuiltValueNullFieldError.checkNotNull(
                refreshToken, 'GMessageSubscriptionVars', 'refreshToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
