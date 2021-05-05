// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i1;

part 'schema.schema.gql.g.dart';

abstract class GDateTimeOffset
    implements Built<GDateTimeOffset, GDateTimeOffsetBuilder> {
  GDateTimeOffset._();

  factory GDateTimeOffset([String? value]) =>
      _$GDateTimeOffset((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDateTimeOffset> get serializer =>
      _i1.DefaultScalarSerializer<GDateTimeOffset>(
          (Object serialized) => GDateTimeOffset((serialized as String?)));
}
