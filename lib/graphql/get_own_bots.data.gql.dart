// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_own_bots.data.gql.g.dart';

abstract class GGetOwnBotsData
    implements Built<GGetOwnBotsData, GGetOwnBotsDataBuilder> {
  GGetOwnBotsData._();

  factory GGetOwnBotsData([Function(GGetOwnBotsDataBuilder b) updates]) =
      _$GGetOwnBotsData;

  static void _initializeBuilder(GGetOwnBotsDataBuilder b) =>
      b..G__typename = 'BotstaQuery';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetOwnBotsData_getOwnBots>? get getOwnBots;
  static Serializer<GGetOwnBotsData> get serializer =>
      _$gGetOwnBotsDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetOwnBotsData.serializer, this)
          as Map<String, dynamic>);
  static GGetOwnBotsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetOwnBotsData.serializer, json);
}

abstract class GGetOwnBotsData_getOwnBots
    implements
        Built<GGetOwnBotsData_getOwnBots, GGetOwnBotsData_getOwnBotsBuilder> {
  GGetOwnBotsData_getOwnBots._();

  factory GGetOwnBotsData_getOwnBots(
          [Function(GGetOwnBotsData_getOwnBotsBuilder b) updates]) =
      _$GGetOwnBotsData_getOwnBots;

  static void _initializeBuilder(GGetOwnBotsData_getOwnBotsBuilder b) =>
      b..G__typename = 'Bot';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  bool get isPublic;
  String get name;
  static Serializer<GGetOwnBotsData_getOwnBots> get serializer =>
      _$gGetOwnBotsDataGetOwnBotsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetOwnBotsData_getOwnBots.serializer, this) as Map<String, dynamic>);
  static GGetOwnBotsData_getOwnBots? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetOwnBotsData_getOwnBots.serializer, json);
}
