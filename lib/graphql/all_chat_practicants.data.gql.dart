// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'all_chat_practicants.data.gql.g.dart';

abstract class GGetAllChatPracticantsData
    implements
        Built<GGetAllChatPracticantsData, GGetAllChatPracticantsDataBuilder> {
  GGetAllChatPracticantsData._();

  factory GGetAllChatPracticantsData(
          [Function(GGetAllChatPracticantsDataBuilder b) updates]) =
      _$GGetAllChatPracticantsData;

  static void _initializeBuilder(GGetAllChatPracticantsDataBuilder b) =>
      b..G__typename = 'BotstaQuery';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetAllChatPracticantsData_allChatPracticants>?
      get allChatPracticants;
  static Serializer<GGetAllChatPracticantsData> get serializer =>
      _$gGetAllChatPracticantsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetAllChatPracticantsData.serializer, this) as Map<String, dynamic>);
  static GGetAllChatPracticantsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetAllChatPracticantsData.serializer, json);
}

abstract class GGetAllChatPracticantsData_allChatPracticants
    implements
        Built<GGetAllChatPracticantsData_allChatPracticants,
            GGetAllChatPracticantsData_allChatPracticantsBuilder> {
  GGetAllChatPracticantsData_allChatPracticants._();

  factory GGetAllChatPracticantsData_allChatPracticants(
      [Function(GGetAllChatPracticantsData_allChatPracticantsBuilder b)
          updates]) = _$GGetAllChatPracticantsData_allChatPracticants;

  static void _initializeBuilder(
          GGetAllChatPracticantsData_allChatPracticantsBuilder b) =>
      b..G__typename = 'ChatPracticant';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  bool get isBot;
  static Serializer<GGetAllChatPracticantsData_allChatPracticants>
      get serializer =>
          _$gGetAllChatPracticantsDataAllChatPracticantsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetAllChatPracticantsData_allChatPracticants.serializer, this)
      as Map<String, dynamic>);
  static GGetAllChatPracticantsData_allChatPracticants? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetAllChatPracticantsData_allChatPracticants.serializer, json);
}
