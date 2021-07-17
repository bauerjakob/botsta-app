// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_messages.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDeleteMessagesData> _$gDeleteMessagesDataSerializer =
    new _$GDeleteMessagesDataSerializer();

class _$GDeleteMessagesDataSerializer
    implements StructuredSerializer<GDeleteMessagesData> {
  @override
  final Iterable<Type> types = const [
    GDeleteMessagesData,
    _$GDeleteMessagesData
  ];
  @override
  final String wireName = 'GDeleteMessagesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteMessagesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.deleteMessages;
    if (value != null) {
      result
        ..add('deleteMessages')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GDeleteMessagesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteMessagesDataBuilder();

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
        case 'deleteMessages':
          result.deleteMessages = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteMessagesData extends GDeleteMessagesData {
  @override
  final String G__typename;
  @override
  final String? deleteMessages;

  factory _$GDeleteMessagesData(
          [void Function(GDeleteMessagesDataBuilder)? updates]) =>
      (new GDeleteMessagesDataBuilder()..update(updates)).build();

  _$GDeleteMessagesData._({required this.G__typename, this.deleteMessages})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GDeleteMessagesData', 'G__typename');
  }

  @override
  GDeleteMessagesData rebuild(
          void Function(GDeleteMessagesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteMessagesDataBuilder toBuilder() =>
      new GDeleteMessagesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteMessagesData &&
        G__typename == other.G__typename &&
        deleteMessages == other.deleteMessages;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), deleteMessages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDeleteMessagesData')
          ..add('G__typename', G__typename)
          ..add('deleteMessages', deleteMessages))
        .toString();
  }
}

class GDeleteMessagesDataBuilder
    implements Builder<GDeleteMessagesData, GDeleteMessagesDataBuilder> {
  _$GDeleteMessagesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _deleteMessages;
  String? get deleteMessages => _$this._deleteMessages;
  set deleteMessages(String? deleteMessages) =>
      _$this._deleteMessages = deleteMessages;

  GDeleteMessagesDataBuilder() {
    GDeleteMessagesData._initializeBuilder(this);
  }

  GDeleteMessagesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteMessages = $v.deleteMessages;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteMessagesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteMessagesData;
  }

  @override
  void update(void Function(GDeleteMessagesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDeleteMessagesData build() {
    final _$result = _$v ??
        new _$GDeleteMessagesData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GDeleteMessagesData', 'G__typename'),
            deleteMessages: deleteMessages);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
