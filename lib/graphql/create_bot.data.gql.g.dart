// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_bot.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateBotData> _$gCreateBotDataSerializer =
    new _$GCreateBotDataSerializer();

class _$GCreateBotDataSerializer
    implements StructuredSerializer<GCreateBotData> {
  @override
  final Iterable<Type> types = const [GCreateBotData, _$GCreateBotData];
  @override
  final String wireName = 'GCreateBotData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateBotData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.registerBot;
    if (value != null) {
      result
        ..add('registerBot')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCreateBotData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateBotDataBuilder();

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
        case 'registerBot':
          result.registerBot = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateBotData extends GCreateBotData {
  @override
  final String G__typename;
  @override
  final String? registerBot;

  factory _$GCreateBotData([void Function(GCreateBotDataBuilder)? updates]) =>
      (new GCreateBotDataBuilder()..update(updates)).build();

  _$GCreateBotData._({required this.G__typename, this.registerBot})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCreateBotData', 'G__typename');
  }

  @override
  GCreateBotData rebuild(void Function(GCreateBotDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateBotDataBuilder toBuilder() =>
      new GCreateBotDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateBotData &&
        G__typename == other.G__typename &&
        registerBot == other.registerBot;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), registerBot.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateBotData')
          ..add('G__typename', G__typename)
          ..add('registerBot', registerBot))
        .toString();
  }
}

class GCreateBotDataBuilder
    implements Builder<GCreateBotData, GCreateBotDataBuilder> {
  _$GCreateBotData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _registerBot;
  String? get registerBot => _$this._registerBot;
  set registerBot(String? registerBot) => _$this._registerBot = registerBot;

  GCreateBotDataBuilder() {
    GCreateBotData._initializeBuilder(this);
  }

  GCreateBotDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _registerBot = $v.registerBot;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateBotData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateBotData;
  }

  @override
  void update(void Function(GCreateBotDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateBotData build() {
    final _$result = _$v ??
        new _$GCreateBotData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GCreateBotData', 'G__typename'),
            registerBot: registerBot);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
