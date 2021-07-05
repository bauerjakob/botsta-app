// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post-message.var.gql.g.dart';

abstract class GPostMessageVars
    implements Built<GPostMessageVars, GPostMessageVarsBuilder> {
  GPostMessageVars._();

  factory GPostMessageVars([Function(GPostMessageVarsBuilder b) updates]) =
      _$GPostMessageVars;

  String get chatroomId;
  String get message;
  String get receiverSessionId;
  static Serializer<GPostMessageVars> get serializer =>
      _$gPostMessageVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GPostMessageVars.serializer, this)
          as Map<String, dynamic>);
  static GPostMessageVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GPostMessageVars.serializer, json);
}
