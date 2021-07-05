// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chatroom_key_exchange.var.gql.g.dart';

abstract class GChatroomKeyExchangeVars
    implements
        Built<GChatroomKeyExchangeVars, GChatroomKeyExchangeVarsBuilder> {
  GChatroomKeyExchangeVars._();

  factory GChatroomKeyExchangeVars(
          [Function(GChatroomKeyExchangeVarsBuilder b) updates]) =
      _$GChatroomKeyExchangeVars;

  String? get chatroomId;
  static Serializer<GChatroomKeyExchangeVars> get serializer =>
      _$gChatroomKeyExchangeVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GChatroomKeyExchangeVars.serializer, this)
          as Map<String, dynamic>);
  static GChatroomKeyExchangeVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GChatroomKeyExchangeVars.serializer, json);
}
