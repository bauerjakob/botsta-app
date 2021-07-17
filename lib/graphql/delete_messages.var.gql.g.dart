// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_messages.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDeleteMessagesVars> _$gDeleteMessagesVarsSerializer =
    new _$GDeleteMessagesVarsSerializer();

class _$GDeleteMessagesVarsSerializer
    implements StructuredSerializer<GDeleteMessagesVars> {
  @override
  final Iterable<Type> types = const [
    GDeleteMessagesVars,
    _$GDeleteMessagesVars
  ];
  @override
  final String wireName = 'GDeleteMessagesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteMessagesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.messageIds;
    if (value != null) {
      result
        ..add('messageIds')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  GDeleteMessagesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteMessagesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'messageIds':
          result.messageIds.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteMessagesVars extends GDeleteMessagesVars {
  @override
  final BuiltList<String>? messageIds;

  factory _$GDeleteMessagesVars(
          [void Function(GDeleteMessagesVarsBuilder)? updates]) =>
      (new GDeleteMessagesVarsBuilder()..update(updates)).build();

  _$GDeleteMessagesVars._({this.messageIds}) : super._();

  @override
  GDeleteMessagesVars rebuild(
          void Function(GDeleteMessagesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteMessagesVarsBuilder toBuilder() =>
      new GDeleteMessagesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteMessagesVars && messageIds == other.messageIds;
  }

  @override
  int get hashCode {
    return $jf($jc(0, messageIds.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDeleteMessagesVars')
          ..add('messageIds', messageIds))
        .toString();
  }
}

class GDeleteMessagesVarsBuilder
    implements Builder<GDeleteMessagesVars, GDeleteMessagesVarsBuilder> {
  _$GDeleteMessagesVars? _$v;

  ListBuilder<String>? _messageIds;
  ListBuilder<String> get messageIds =>
      _$this._messageIds ??= new ListBuilder<String>();
  set messageIds(ListBuilder<String>? messageIds) =>
      _$this._messageIds = messageIds;

  GDeleteMessagesVarsBuilder();

  GDeleteMessagesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _messageIds = $v.messageIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteMessagesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteMessagesVars;
  }

  @override
  void update(void Function(GDeleteMessagesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDeleteMessagesVars build() {
    _$GDeleteMessagesVars _$result;
    try {
      _$result =
          _$v ?? new _$GDeleteMessagesVars._(messageIds: _messageIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'messageIds';
        _messageIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GDeleteMessagesVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
