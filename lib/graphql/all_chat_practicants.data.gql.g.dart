// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_chat_practicants.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetAllChatPracticantsData> _$gGetAllChatPracticantsDataSerializer =
    new _$GGetAllChatPracticantsDataSerializer();
Serializer<GGetAllChatPracticantsData_allChatPracticants>
    _$gGetAllChatPracticantsDataAllChatPracticantsSerializer =
    new _$GGetAllChatPracticantsData_allChatPracticantsSerializer();

class _$GGetAllChatPracticantsDataSerializer
    implements StructuredSerializer<GGetAllChatPracticantsData> {
  @override
  final Iterable<Type> types = const [
    GGetAllChatPracticantsData,
    _$GGetAllChatPracticantsData
  ];
  @override
  final String wireName = 'GGetAllChatPracticantsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetAllChatPracticantsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.allChatPracticants;
    if (value != null) {
      result
        ..add('allChatPracticants')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GGetAllChatPracticantsData_allChatPracticants)
            ])));
    }
    return result;
  }

  @override
  GGetAllChatPracticantsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetAllChatPracticantsDataBuilder();

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
        case 'allChatPracticants':
          result.allChatPracticants.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetAllChatPracticantsData_allChatPracticants)
              ]))! as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAllChatPracticantsData_allChatPracticantsSerializer
    implements
        StructuredSerializer<GGetAllChatPracticantsData_allChatPracticants> {
  @override
  final Iterable<Type> types = const [
    GGetAllChatPracticantsData_allChatPracticants,
    _$GGetAllChatPracticantsData_allChatPracticants
  ];
  @override
  final String wireName = 'GGetAllChatPracticantsData_allChatPracticants';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetAllChatPracticantsData_allChatPracticants object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'isBot',
      serializers.serialize(object.isBot, specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GGetAllChatPracticantsData_allChatPracticants deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetAllChatPracticantsData_allChatPracticantsBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isBot':
          result.isBot = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAllChatPracticantsData extends GGetAllChatPracticantsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetAllChatPracticantsData_allChatPracticants>?
      allChatPracticants;

  factory _$GGetAllChatPracticantsData(
          [void Function(GGetAllChatPracticantsDataBuilder)? updates]) =>
      (new GGetAllChatPracticantsDataBuilder()..update(updates)).build();

  _$GGetAllChatPracticantsData._(
      {required this.G__typename, this.allChatPracticants})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetAllChatPracticantsData', 'G__typename');
  }

  @override
  GGetAllChatPracticantsData rebuild(
          void Function(GGetAllChatPracticantsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAllChatPracticantsDataBuilder toBuilder() =>
      new GGetAllChatPracticantsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAllChatPracticantsData &&
        G__typename == other.G__typename &&
        allChatPracticants == other.allChatPracticants;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), allChatPracticants.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetAllChatPracticantsData')
          ..add('G__typename', G__typename)
          ..add('allChatPracticants', allChatPracticants))
        .toString();
  }
}

class GGetAllChatPracticantsDataBuilder
    implements
        Builder<GGetAllChatPracticantsData, GGetAllChatPracticantsDataBuilder> {
  _$GGetAllChatPracticantsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetAllChatPracticantsData_allChatPracticants>?
      _allChatPracticants;
  ListBuilder<GGetAllChatPracticantsData_allChatPracticants>
      get allChatPracticants => _$this._allChatPracticants ??=
          new ListBuilder<GGetAllChatPracticantsData_allChatPracticants>();
  set allChatPracticants(
          ListBuilder<GGetAllChatPracticantsData_allChatPracticants>?
              allChatPracticants) =>
      _$this._allChatPracticants = allChatPracticants;

  GGetAllChatPracticantsDataBuilder() {
    GGetAllChatPracticantsData._initializeBuilder(this);
  }

  GGetAllChatPracticantsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _allChatPracticants = $v.allChatPracticants?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAllChatPracticantsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAllChatPracticantsData;
  }

  @override
  void update(void Function(GGetAllChatPracticantsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetAllChatPracticantsData build() {
    _$GGetAllChatPracticantsData _$result;
    try {
      _$result = _$v ??
          new _$GGetAllChatPracticantsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetAllChatPracticantsData', 'G__typename'),
              allChatPracticants: _allChatPracticants?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allChatPracticants';
        _allChatPracticants?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetAllChatPracticantsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetAllChatPracticantsData_allChatPracticants
    extends GGetAllChatPracticantsData_allChatPracticants {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final bool isBot;

  factory _$GGetAllChatPracticantsData_allChatPracticants(
          [void Function(GGetAllChatPracticantsData_allChatPracticantsBuilder)?
              updates]) =>
      (new GGetAllChatPracticantsData_allChatPracticantsBuilder()
            ..update(updates))
          .build();

  _$GGetAllChatPracticantsData_allChatPracticants._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.isBot})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetAllChatPracticantsData_allChatPracticants', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetAllChatPracticantsData_allChatPracticants', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetAllChatPracticantsData_allChatPracticants', 'name');
    BuiltValueNullFieldError.checkNotNull(
        isBot, 'GGetAllChatPracticantsData_allChatPracticants', 'isBot');
  }

  @override
  GGetAllChatPracticantsData_allChatPracticants rebuild(
          void Function(GGetAllChatPracticantsData_allChatPracticantsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAllChatPracticantsData_allChatPracticantsBuilder toBuilder() =>
      new GGetAllChatPracticantsData_allChatPracticantsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAllChatPracticantsData_allChatPracticants &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        isBot == other.isBot;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), name.hashCode),
        isBot.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetAllChatPracticantsData_allChatPracticants')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('isBot', isBot))
        .toString();
  }
}

class GGetAllChatPracticantsData_allChatPracticantsBuilder
    implements
        Builder<GGetAllChatPracticantsData_allChatPracticants,
            GGetAllChatPracticantsData_allChatPracticantsBuilder> {
  _$GGetAllChatPracticantsData_allChatPracticants? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _isBot;
  bool? get isBot => _$this._isBot;
  set isBot(bool? isBot) => _$this._isBot = isBot;

  GGetAllChatPracticantsData_allChatPracticantsBuilder() {
    GGetAllChatPracticantsData_allChatPracticants._initializeBuilder(this);
  }

  GGetAllChatPracticantsData_allChatPracticantsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _isBot = $v.isBot;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAllChatPracticantsData_allChatPracticants other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAllChatPracticantsData_allChatPracticants;
  }

  @override
  void update(
      void Function(GGetAllChatPracticantsData_allChatPracticantsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetAllChatPracticantsData_allChatPracticants build() {
    final _$result = _$v ??
        new _$GGetAllChatPracticantsData_allChatPracticants._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetAllChatPracticantsData_allChatPracticants', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetAllChatPracticantsData_allChatPracticants', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GGetAllChatPracticantsData_allChatPracticants', 'name'),
            isBot: BuiltValueNullFieldError.checkNotNull(isBot,
                'GGetAllChatPracticantsData_allChatPracticants', 'isBot'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
