// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_chatroom_group.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateChatroomGroupVars> _$gCreateChatroomGroupVarsSerializer =
    new _$GCreateChatroomGroupVarsSerializer();

class _$GCreateChatroomGroupVarsSerializer
    implements StructuredSerializer<GCreateChatroomGroupVars> {
  @override
  final Iterable<Type> types = const [
    GCreateChatroomGroupVars,
    _$GCreateChatroomGroupVars
  ];
  @override
  final String wireName = 'GCreateChatroomGroupVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateChatroomGroupVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'practicantIds',
      serializers.serialize(object.practicantIds,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  GCreateChatroomGroupVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateChatroomGroupVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'practicantIds':
          result.practicantIds.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateChatroomGroupVars extends GCreateChatroomGroupVars {
  @override
  final String name;
  @override
  final BuiltList<String> practicantIds;

  factory _$GCreateChatroomGroupVars(
          [void Function(GCreateChatroomGroupVarsBuilder)? updates]) =>
      (new GCreateChatroomGroupVarsBuilder()..update(updates)).build();

  _$GCreateChatroomGroupVars._(
      {required this.name, required this.practicantIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, 'GCreateChatroomGroupVars', 'name');
    BuiltValueNullFieldError.checkNotNull(
        practicantIds, 'GCreateChatroomGroupVars', 'practicantIds');
  }

  @override
  GCreateChatroomGroupVars rebuild(
          void Function(GCreateChatroomGroupVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateChatroomGroupVarsBuilder toBuilder() =>
      new GCreateChatroomGroupVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateChatroomGroupVars &&
        name == other.name &&
        practicantIds == other.practicantIds;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), practicantIds.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateChatroomGroupVars')
          ..add('name', name)
          ..add('practicantIds', practicantIds))
        .toString();
  }
}

class GCreateChatroomGroupVarsBuilder
    implements
        Builder<GCreateChatroomGroupVars, GCreateChatroomGroupVarsBuilder> {
  _$GCreateChatroomGroupVars? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<String>? _practicantIds;
  ListBuilder<String> get practicantIds =>
      _$this._practicantIds ??= new ListBuilder<String>();
  set practicantIds(ListBuilder<String>? practicantIds) =>
      _$this._practicantIds = practicantIds;

  GCreateChatroomGroupVarsBuilder();

  GCreateChatroomGroupVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _practicantIds = $v.practicantIds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateChatroomGroupVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateChatroomGroupVars;
  }

  @override
  void update(void Function(GCreateChatroomGroupVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateChatroomGroupVars build() {
    _$GCreateChatroomGroupVars _$result;
    try {
      _$result = _$v ??
          new _$GCreateChatroomGroupVars._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GCreateChatroomGroupVars', 'name'),
              practicantIds: practicantIds.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'practicantIds';
        practicantIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreateChatroomGroupVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
