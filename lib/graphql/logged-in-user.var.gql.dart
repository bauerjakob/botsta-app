// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'logged-in-user.var.gql.g.dart';

abstract class GLoggedInUserVars
    implements Built<GLoggedInUserVars, GLoggedInUserVarsBuilder> {
  GLoggedInUserVars._();

  factory GLoggedInUserVars([Function(GLoggedInUserVarsBuilder b) updates]) =
      _$GLoggedInUserVars;

  static Serializer<GLoggedInUserVars> get serializer =>
      _$gLoggedInUserVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLoggedInUserVars.serializer, this)
          as Map<String, dynamic>);
  static GLoggedInUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GLoggedInUserVars.serializer, json);
}
