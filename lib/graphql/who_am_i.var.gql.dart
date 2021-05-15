// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'who_am_i.var.gql.g.dart';

abstract class GWhoAmIVars implements Built<GWhoAmIVars, GWhoAmIVarsBuilder> {
  GWhoAmIVars._();

  factory GWhoAmIVars([Function(GWhoAmIVarsBuilder b) updates]) = _$GWhoAmIVars;

  static Serializer<GWhoAmIVars> get serializer => _$gWhoAmIVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GWhoAmIVars.serializer, this)
          as Map<String, dynamic>);
  static GWhoAmIVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GWhoAmIVars.serializer, json);
}
