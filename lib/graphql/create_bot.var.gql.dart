// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_bot.var.gql.g.dart';

abstract class GCreateBotVars
    implements Built<GCreateBotVars, GCreateBotVarsBuilder> {
  GCreateBotVars._();

  factory GCreateBotVars([Function(GCreateBotVarsBuilder b) updates]) =
      _$GCreateBotVars;

  String get botName;
  bool get isPublic;
  static Serializer<GCreateBotVars> get serializer =>
      _$gCreateBotVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCreateBotVars.serializer, this)
          as Map<String, dynamic>);
  static GCreateBotVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCreateBotVars.serializer, json);
}
