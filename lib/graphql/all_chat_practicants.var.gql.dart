// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'all_chat_practicants.var.gql.g.dart';

abstract class GGetAllChatPracticantsVars
    implements
        Built<GGetAllChatPracticantsVars, GGetAllChatPracticantsVarsBuilder> {
  GGetAllChatPracticantsVars._();

  factory GGetAllChatPracticantsVars(
          [Function(GGetAllChatPracticantsVarsBuilder b) updates]) =
      _$GGetAllChatPracticantsVars;

  static Serializer<GGetAllChatPracticantsVars> get serializer =>
      _$gGetAllChatPracticantsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetAllChatPracticantsVars.serializer, this) as Map<String, dynamic>);
  static GGetAllChatPracticantsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetAllChatPracticantsVars.serializer, json);
}
