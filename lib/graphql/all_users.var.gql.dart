// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'all_users.var.gql.g.dart';

abstract class GGetAllUsersVars
    implements Built<GGetAllUsersVars, GGetAllUsersVarsBuilder> {
  GGetAllUsersVars._();

  factory GGetAllUsersVars([Function(GGetAllUsersVarsBuilder b) updates]) =
      _$GGetAllUsersVars;

  static Serializer<GGetAllUsersVars> get serializer =>
      _$gGetAllUsersVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetAllUsersVars.serializer, this)
          as Map<String, dynamic>);
  static GGetAllUsersVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetAllUsersVars.serializer, json);
}
