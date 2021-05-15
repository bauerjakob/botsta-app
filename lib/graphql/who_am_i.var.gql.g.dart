// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'who_am_i.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GWhoAmIVars> _$gWhoAmIVarsSerializer = new _$GWhoAmIVarsSerializer();

class _$GWhoAmIVarsSerializer implements StructuredSerializer<GWhoAmIVars> {
  @override
  final Iterable<Type> types = const [GWhoAmIVars, _$GWhoAmIVars];
  @override
  final String wireName = 'GWhoAmIVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GWhoAmIVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GWhoAmIVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GWhoAmIVarsBuilder().build();
  }
}

class _$GWhoAmIVars extends GWhoAmIVars {
  factory _$GWhoAmIVars([void Function(GWhoAmIVarsBuilder)? updates]) =>
      (new GWhoAmIVarsBuilder()..update(updates)).build();

  _$GWhoAmIVars._() : super._();

  @override
  GWhoAmIVars rebuild(void Function(GWhoAmIVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GWhoAmIVarsBuilder toBuilder() => new GWhoAmIVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GWhoAmIVars;
  }

  @override
  int get hashCode {
    return 750091690;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GWhoAmIVars').toString();
  }
}

class GWhoAmIVarsBuilder implements Builder<GWhoAmIVars, GWhoAmIVarsBuilder> {
  _$GWhoAmIVars? _$v;

  GWhoAmIVarsBuilder();

  @override
  void replace(GWhoAmIVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GWhoAmIVars;
  }

  @override
  void update(void Function(GWhoAmIVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GWhoAmIVars build() {
    final _$result = _$v ?? new _$GWhoAmIVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
