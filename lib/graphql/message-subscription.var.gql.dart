// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message-subscription.var.gql.g.dart';

abstract class GMessageSubscriptionVars
    implements
        Built<GMessageSubscriptionVars, GMessageSubscriptionVarsBuilder> {
  GMessageSubscriptionVars._();

  factory GMessageSubscriptionVars(
          [Function(GMessageSubscriptionVarsBuilder b) updates]) =
      _$GMessageSubscriptionVars;

  String get refreshToken;
  static Serializer<GMessageSubscriptionVars> get serializer =>
      _$gMessageSubscriptionVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GMessageSubscriptionVars.serializer, this)
          as Map<String, dynamic>);
  static GMessageSubscriptionVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GMessageSubscriptionVars.serializer, json);
}
