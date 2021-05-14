// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_chatroom_single.var.gql.g.dart';

abstract class GCreateChatroomSingleVars
    implements
        Built<GCreateChatroomSingleVars, GCreateChatroomSingleVarsBuilder> {
  GCreateChatroomSingleVars._();

  factory GCreateChatroomSingleVars(
          [Function(GCreateChatroomSingleVarsBuilder b) updates]) =
      _$GCreateChatroomSingleVars;

  String get practicantId;
  static Serializer<GCreateChatroomSingleVars> get serializer =>
      _$gCreateChatroomSingleVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCreateChatroomSingleVars.serializer, this)
          as Map<String, dynamic>);
  static GCreateChatroomSingleVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCreateChatroomSingleVars.serializer, json);
}
