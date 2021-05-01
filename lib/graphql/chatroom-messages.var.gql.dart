// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chatroom-messages.var.gql.g.dart';

abstract class GGetChatroomMessagesVars
    implements
        Built<GGetChatroomMessagesVars, GGetChatroomMessagesVarsBuilder> {
  GGetChatroomMessagesVars._();

  factory GGetChatroomMessagesVars(
          [Function(GGetChatroomMessagesVarsBuilder b) updates]) =
      _$GGetChatroomMessagesVars;

  String get chatroomId;
  static Serializer<GGetChatroomMessagesVars> get serializer =>
      _$gGetChatroomMessagesVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetChatroomMessagesVars.serializer, this)
          as Map<String, dynamic>);
  static GGetChatroomMessagesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetChatroomMessagesVars.serializer, json);
}
