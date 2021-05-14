// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_chatroom_single.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateChatroomSingleVars> _$gCreateChatroomSingleVarsSerializer =
    new _$GCreateChatroomSingleVarsSerializer();

class _$GCreateChatroomSingleVarsSerializer
    implements StructuredSerializer<GCreateChatroomSingleVars> {
  @override
  final Iterable<Type> types = const [
    GCreateChatroomSingleVars,
    _$GCreateChatroomSingleVars
  ];
  @override
  final String wireName = 'GCreateChatroomSingleVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateChatroomSingleVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'practicantId',
      serializers.serialize(object.practicantId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCreateChatroomSingleVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateChatroomSingleVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'practicantId':
          result.practicantId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateChatroomSingleVars extends GCreateChatroomSingleVars {
  @override
  final String practicantId;

  factory _$GCreateChatroomSingleVars(
          [void Function(GCreateChatroomSingleVarsBuilder)? updates]) =>
      (new GCreateChatroomSingleVarsBuilder()..update(updates)).build();

  _$GCreateChatroomSingleVars._({required this.practicantId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        practicantId, 'GCreateChatroomSingleVars', 'practicantId');
  }

  @override
  GCreateChatroomSingleVars rebuild(
          void Function(GCreateChatroomSingleVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateChatroomSingleVarsBuilder toBuilder() =>
      new GCreateChatroomSingleVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateChatroomSingleVars &&
        practicantId == other.practicantId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, practicantId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateChatroomSingleVars')
          ..add('practicantId', practicantId))
        .toString();
  }
}

class GCreateChatroomSingleVarsBuilder
    implements
        Builder<GCreateChatroomSingleVars, GCreateChatroomSingleVarsBuilder> {
  _$GCreateChatroomSingleVars? _$v;

  String? _practicantId;
  String? get practicantId => _$this._practicantId;
  set practicantId(String? practicantId) => _$this._practicantId = practicantId;

  GCreateChatroomSingleVarsBuilder();

  GCreateChatroomSingleVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _practicantId = $v.practicantId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateChatroomSingleVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateChatroomSingleVars;
  }

  @override
  void update(void Function(GCreateChatroomSingleVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateChatroomSingleVars build() {
    final _$result = _$v ??
        new _$GCreateChatroomSingleVars._(
            practicantId: BuiltValueNullFieldError.checkNotNull(
                practicantId, 'GCreateChatroomSingleVars', 'practicantId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
