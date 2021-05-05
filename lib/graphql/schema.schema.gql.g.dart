// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GDateTimeOffset extends GDateTimeOffset {
  @override
  final String value;

  factory _$GDateTimeOffset([void Function(GDateTimeOffsetBuilder)? updates]) =>
      (new GDateTimeOffsetBuilder()..update(updates)).build();

  _$GDateTimeOffset._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, 'GDateTimeOffset', 'value');
  }

  @override
  GDateTimeOffset rebuild(void Function(GDateTimeOffsetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDateTimeOffsetBuilder toBuilder() =>
      new GDateTimeOffsetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDateTimeOffset && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDateTimeOffset')..add('value', value))
        .toString();
  }
}

class GDateTimeOffsetBuilder
    implements Builder<GDateTimeOffset, GDateTimeOffsetBuilder> {
  _$GDateTimeOffset? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GDateTimeOffsetBuilder();

  GDateTimeOffsetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDateTimeOffset other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDateTimeOffset;
  }

  @override
  void update(void Function(GDateTimeOffsetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDateTimeOffset build() {
    final _$result = _$v ??
        new _$GDateTimeOffset._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, 'GDateTimeOffset', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
