// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'register_user.var.gql.g.dart';

abstract class GRegisterUserVars
    implements Built<GRegisterUserVars, GRegisterUserVarsBuilder> {
  GRegisterUserVars._();

  factory GRegisterUserVars([Function(GRegisterUserVarsBuilder b) updates]) =
      _$GRegisterUserVars;

  String get username;
  String get password;
  static Serializer<GRegisterUserVars> get serializer =>
      _$gRegisterUserVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRegisterUserVars.serializer, this)
          as Map<String, dynamic>);
  static GRegisterUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRegisterUserVars.serializer, json);
}
