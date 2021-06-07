// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_bot.data.gql.g.dart';

abstract class GCreateBotData
    implements Built<GCreateBotData, GCreateBotDataBuilder> {
  GCreateBotData._();

  factory GCreateBotData([Function(GCreateBotDataBuilder b) updates]) =
      _$GCreateBotData;

  static void _initializeBuilder(GCreateBotDataBuilder b) =>
      b..G__typename = 'BotstaMutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get registerBot;
  static Serializer<GCreateBotData> get serializer =>
      _$gCreateBotDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCreateBotData.serializer, this)
          as Map<String, dynamic>);
  static GCreateBotData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCreateBotData.serializer, json);
}
