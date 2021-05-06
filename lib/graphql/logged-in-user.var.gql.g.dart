// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logged-in-user.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLoggedInUserVars> _$gLoggedInUserVarsSerializer =
    new _$GLoggedInUserVarsSerializer();

class _$GLoggedInUserVarsSerializer
    implements StructuredSerializer<GLoggedInUserVars> {
  @override
  final Iterable<Type> types = const [GLoggedInUserVars, _$GLoggedInUserVars];
  @override
  final String wireName = 'GLoggedInUserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLoggedInUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GLoggedInUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GLoggedInUserVarsBuilder().build();
  }
}

class _$GLoggedInUserVars extends GLoggedInUserVars {
  factory _$GLoggedInUserVars(
          [void Function(GLoggedInUserVarsBuilder)? updates]) =>
      (new GLoggedInUserVarsBuilder()..update(updates)).build();

  _$GLoggedInUserVars._() : super._();

  @override
  GLoggedInUserVars rebuild(void Function(GLoggedInUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoggedInUserVarsBuilder toBuilder() =>
      new GLoggedInUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoggedInUserVars;
  }

  @override
  int get hashCode {
    return 403914328;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GLoggedInUserVars').toString();
  }
}

class GLoggedInUserVarsBuilder
    implements Builder<GLoggedInUserVars, GLoggedInUserVarsBuilder> {
  _$GLoggedInUserVars? _$v;

  GLoggedInUserVarsBuilder();

  @override
  void replace(GLoggedInUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoggedInUserVars;
  }

  @override
  void update(void Function(GLoggedInUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLoggedInUserVars build() {
    final _$result = _$v ?? new _$GLoggedInUserVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
