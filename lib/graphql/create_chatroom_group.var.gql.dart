// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_chatroom_group.var.gql.g.dart';

abstract class GCreateChatroomGroupVars
    implements
        Built<GCreateChatroomGroupVars, GCreateChatroomGroupVarsBuilder> {
  GCreateChatroomGroupVars._();

  factory GCreateChatroomGroupVars(
          [Function(GCreateChatroomGroupVarsBuilder b) updates]) =
      _$GCreateChatroomGroupVars;

  String get name;
  BuiltList<String> get practicantIds;
  static Serializer<GCreateChatroomGroupVars> get serializer =>
      _$gCreateChatroomGroupVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCreateChatroomGroupVars.serializer, this)
          as Map<String, dynamic>);
  static GCreateChatroomGroupVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCreateChatroomGroupVars.serializer, json);
}
