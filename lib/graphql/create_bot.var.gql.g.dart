// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_bot.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateBotVars> _$gCreateBotVarsSerializer =
    new _$GCreateBotVarsSerializer();

class _$GCreateBotVarsSerializer
    implements StructuredSerializer<GCreateBotVars> {
  @override
  final Iterable<Type> types = const [GCreateBotVars, _$GCreateBotVars];
  @override
  final String wireName = 'GCreateBotVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateBotVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'botName',
      serializers.serialize(object.botName,
          specifiedType: const FullType(String)),
      'isPublic',
      serializers.serialize(object.isPublic,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GCreateBotVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateBotVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'botName':
          result.botName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isPublic':
          result.isPublic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateBotVars extends GCreateBotVars {
  @override
  final String botName;
  @override
  final bool isPublic;

  factory _$GCreateBotVars([void Function(GCreateBotVarsBuilder)? updates]) =>
      (new GCreateBotVarsBuilder()..update(updates)).build();

  _$GCreateBotVars._({required this.botName, required this.isPublic})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(botName, 'GCreateBotVars', 'botName');
    BuiltValueNullFieldError.checkNotNull(
        isPublic, 'GCreateBotVars', 'isPublic');
  }

  @override
  GCreateBotVars rebuild(void Function(GCreateBotVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateBotVarsBuilder toBuilder() =>
      new GCreateBotVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateBotVars &&
        botName == other.botName &&
        isPublic == other.isPublic;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, botName.hashCode), isPublic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateBotVars')
          ..add('botName', botName)
          ..add('isPublic', isPublic))
        .toString();
  }
}

class GCreateBotVarsBuilder
    implements Builder<GCreateBotVars, GCreateBotVarsBuilder> {
  _$GCreateBotVars? _$v;

  String? _botName;
  String? get botName => _$this._botName;
  set botName(String? botName) => _$this._botName = botName;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  GCreateBotVarsBuilder();

  GCreateBotVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _botName = $v.botName;
      _isPublic = $v.isPublic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateBotVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateBotVars;
  }

  @override
  void update(void Function(GCreateBotVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateBotVars build() {
    final _$result = _$v ??
        new _$GCreateBotVars._(
            botName: BuiltValueNullFieldError.checkNotNull(
                botName, 'GCreateBotVars', 'botName'),
            isPublic: BuiltValueNullFieldError.checkNotNull(
                isPublic, 'GCreateBotVars', 'isPublic'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
