// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chatrooms.var.gql.g.dart';

abstract class GGetChatroomsVars
    implements Built<GGetChatroomsVars, GGetChatroomsVarsBuilder> {
  GGetChatroomsVars._();

  factory GGetChatroomsVars([Function(GGetChatroomsVarsBuilder b) updates]) =
      _$GGetChatroomsVars;

  static Serializer<GGetChatroomsVars> get serializer =>
      _$gGetChatroomsVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetChatroomsVars.serializer, this)
          as Map<String, dynamic>);
  static GGetChatroomsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetChatroomsVars.serializer, json);
}
