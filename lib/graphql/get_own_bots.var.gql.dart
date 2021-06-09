// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_own_bots.var.gql.g.dart';

abstract class GGetOwnBotsVars
    implements Built<GGetOwnBotsVars, GGetOwnBotsVarsBuilder> {
  GGetOwnBotsVars._();

  factory GGetOwnBotsVars([Function(GGetOwnBotsVarsBuilder b) updates]) =
      _$GGetOwnBotsVars;

  static Serializer<GGetOwnBotsVars> get serializer =>
      _$gGetOwnBotsVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetOwnBotsVars.serializer, this)
          as Map<String, dynamic>);
  static GGetOwnBotsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetOwnBotsVars.serializer, json);
}
