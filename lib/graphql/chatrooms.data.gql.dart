// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/schema.schema.gql.dart' as _i2;
import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chatrooms.data.gql.g.dart';

abstract class GGetChatroomsData
    implements Built<GGetChatroomsData, GGetChatroomsDataBuilder> {
  GGetChatroomsData._();

  factory GGetChatroomsData([Function(GGetChatroomsDataBuilder b) updates]) =
      _$GGetChatroomsData;

  static void _initializeBuilder(GGetChatroomsDataBuilder b) =>
      b..G__typename = 'BotstaQuery';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetChatroomsData_chatrooms>? get chatrooms;
  static Serializer<GGetChatroomsData> get serializer =>
      _$gGetChatroomsDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetChatroomsData.serializer, this)
          as Map<String, dynamic>);
  static GGetChatroomsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetChatroomsData.serializer, json);
}

abstract class GGetChatroomsData_chatrooms
    implements
        Built<GGetChatroomsData_chatrooms, GGetChatroomsData_chatroomsBuilder> {
  GGetChatroomsData_chatrooms._();

  factory GGetChatroomsData_chatrooms(
          [Function(GGetChatroomsData_chatroomsBuilder b) updates]) =
      _$GGetChatroomsData_chatrooms;

  static void _initializeBuilder(GGetChatroomsData_chatroomsBuilder b) =>
      b..G__typename = 'GraphChatroomType';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  GGetChatroomsData_chatrooms_latestMessage? get latestMessage;
  String? get name;
  String get type;
  static Serializer<GGetChatroomsData_chatrooms> get serializer =>
      _$gGetChatroomsDataChatroomsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetChatroomsData_chatrooms.serializer, this) as Map<String, dynamic>);
  static GGetChatroomsData_chatrooms? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetChatroomsData_chatrooms.serializer, json);
}

abstract class GGetChatroomsData_chatrooms_latestMessage
    implements
        Built<GGetChatroomsData_chatrooms_latestMessage,
            GGetChatroomsData_chatrooms_latestMessageBuilder> {
  GGetChatroomsData_chatrooms_latestMessage._();

  factory GGetChatroomsData_chatrooms_latestMessage(
      [Function(GGetChatroomsData_chatrooms_latestMessageBuilder b)
          updates]) = _$GGetChatroomsData_chatrooms_latestMessage;

  static void _initializeBuilder(
          GGetChatroomsData_chatrooms_latestMessageBuilder b) =>
      b..G__typename = 'GraphMessageType';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get message;
  _i2.GDateTimeOffset get sendTime;
  String get senderId;
  static Serializer<GGetChatroomsData_chatrooms_latestMessage> get serializer =>
      _$gGetChatroomsDataChatroomsLatestMessageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetChatroomsData_chatrooms_latestMessage.serializer, this)
      as Map<String, dynamic>);
  static GGetChatroomsData_chatrooms_latestMessage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetChatroomsData_chatrooms_latestMessage.serializer, json);
}
