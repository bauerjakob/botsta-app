// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_messages.var.gql.g.dart';

abstract class GDeleteMessagesVars
    implements Built<GDeleteMessagesVars, GDeleteMessagesVarsBuilder> {
  GDeleteMessagesVars._();

  factory GDeleteMessagesVars(
      [Function(GDeleteMessagesVarsBuilder b) updates]) = _$GDeleteMessagesVars;

  BuiltList<String>? get messageIds;
  static Serializer<GDeleteMessagesVars> get serializer =>
      _$gDeleteMessagesVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GDeleteMessagesVars.serializer, this)
          as Map<String, dynamic>);
  static GDeleteMessagesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GDeleteMessagesVars.serializer, json);
}
