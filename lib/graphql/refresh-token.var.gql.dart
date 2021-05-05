// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'refresh-token.var.gql.g.dart';

abstract class GRefresthTokenVars
    implements Built<GRefresthTokenVars, GRefresthTokenVarsBuilder> {
  GRefresthTokenVars._();

  factory GRefresthTokenVars([Function(GRefresthTokenVarsBuilder b) updates]) =
      _$GRefresthTokenVars;

  static Serializer<GRefresthTokenVars> get serializer =>
      _$gRefresthTokenVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRefresthTokenVars.serializer, this)
          as Map<String, dynamic>);
  static GRefresthTokenVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRefresthTokenVars.serializer, json);
}
