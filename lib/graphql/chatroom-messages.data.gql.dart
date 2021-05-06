// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chatroom-messages.data.gql.g.dart';

abstract class GGetChatroomMessagesData
    implements
        Built<GGetChatroomMessagesData, GGetChatroomMessagesDataBuilder> {
  GGetChatroomMessagesData._();

  factory GGetChatroomMessagesData(
          [Function(GGetChatroomMessagesDataBuilder b) updates]) =
      _$GGetChatroomMessagesData;

  static void _initializeBuilder(GGetChatroomMessagesDataBuilder b) =>
      b..G__typename = 'BotstaQuery';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetChatroomMessagesData_chatroom? get chatroom;
  static Serializer<GGetChatroomMessagesData> get serializer =>
      _$gGetChatroomMessagesDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetChatroomMessagesData.serializer, this)
          as Map<String, dynamic>);
  static GGetChatroomMessagesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetChatroomMessagesData.serializer, json);
}

abstract class GGetChatroomMessagesData_chatroom
    implements
        Built<GGetChatroomMessagesData_chatroom,
            GGetChatroomMessagesData_chatroomBuilder> {
  GGetChatroomMessagesData_chatroom._();

  factory GGetChatroomMessagesData_chatroom(
          [Function(GGetChatroomMessagesData_chatroomBuilder b) updates]) =
      _$GGetChatroomMessagesData_chatroom;

  static void _initializeBuilder(GGetChatroomMessagesData_chatroomBuilder b) =>
      b..G__typename = 'GraphChatroomType';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  BuiltList<GGetChatroomMessagesData_chatroom_messages>? get messages;
  static Serializer<GGetChatroomMessagesData_chatroom> get serializer =>
      _$gGetChatroomMessagesDataChatroomSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetChatroomMessagesData_chatroom.serializer, this)
      as Map<String, dynamic>);
  static GGetChatroomMessagesData_chatroom? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetChatroomMessagesData_chatroom.serializer, json);
}

abstract class GGetChatroomMessagesData_chatroom_messages
    implements
        Built<GGetChatroomMessagesData_chatroom_messages,
            GGetChatroomMessagesData_chatroom_messagesBuilder> {
  GGetChatroomMessagesData_chatroom_messages._();

  factory GGetChatroomMessagesData_chatroom_messages(
      [Function(GGetChatroomMessagesData_chatroom_messagesBuilder b)
          updates]) = _$GGetChatroomMessagesData_chatroom_messages;

  static void _initializeBuilder(
          GGetChatroomMessagesData_chatroom_messagesBuilder b) =>
      b..G__typename = 'GraphMessageType';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get message;
  String get senderId;
  static Serializer<GGetChatroomMessagesData_chatroom_messages>
      get serializer => _$gGetChatroomMessagesDataChatroomMessagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetChatroomMessagesData_chatroom_messages.serializer, this)
      as Map<String, dynamic>);
  static GGetChatroomMessagesData_chatroom_messages? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetChatroomMessagesData_chatroom_messages.serializer, json);
}
