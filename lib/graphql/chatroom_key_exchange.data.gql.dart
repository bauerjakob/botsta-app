// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chatroom_key_exchange.data.gql.g.dart';

abstract class GChatroomKeyExchangeData
    implements
        Built<GChatroomKeyExchangeData, GChatroomKeyExchangeDataBuilder> {
  GChatroomKeyExchangeData._();

  factory GChatroomKeyExchangeData(
          [Function(GChatroomKeyExchangeDataBuilder b) updates]) =
      _$GChatroomKeyExchangeData;

  static void _initializeBuilder(GChatroomKeyExchangeDataBuilder b) =>
      b..G__typename = 'BotstaQuery';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GChatroomKeyExchangeData_getChatPracticantsOfChatroom>?
      get getChatPracticantsOfChatroom;
  static Serializer<GChatroomKeyExchangeData> get serializer =>
      _$gChatroomKeyExchangeDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GChatroomKeyExchangeData.serializer, this)
          as Map<String, dynamic>);
  static GChatroomKeyExchangeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GChatroomKeyExchangeData.serializer, json);
}

abstract class GChatroomKeyExchangeData_getChatPracticantsOfChatroom
    implements
        Built<GChatroomKeyExchangeData_getChatPracticantsOfChatroom,
            GChatroomKeyExchangeData_getChatPracticantsOfChatroomBuilder> {
  GChatroomKeyExchangeData_getChatPracticantsOfChatroom._();

  factory GChatroomKeyExchangeData_getChatPracticantsOfChatroom(
      [Function(GChatroomKeyExchangeData_getChatPracticantsOfChatroomBuilder b)
          updates]) = _$GChatroomKeyExchangeData_getChatPracticantsOfChatroom;

  static void _initializeBuilder(
          GChatroomKeyExchangeData_getChatPracticantsOfChatroomBuilder b) =>
      b..G__typename = 'ChatPracticant';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  bool get isBot;
  String get name;
  BuiltList<GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange>?
      get keyExchange;
  static Serializer<GChatroomKeyExchangeData_getChatPracticantsOfChatroom>
      get serializer =>
          _$gChatroomKeyExchangeDataGetChatPracticantsOfChatroomSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GChatroomKeyExchangeData_getChatPracticantsOfChatroom.serializer,
      this) as Map<String, dynamic>);
  static GChatroomKeyExchangeData_getChatPracticantsOfChatroom? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GChatroomKeyExchangeData_getChatPracticantsOfChatroom.serializer,
          json);
}

abstract class GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange
    implements
        Built<GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange,
            GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchangeBuilder> {
  GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange._();

  factory GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange(
          [Function(
                  GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchangeBuilder
                      b)
              updates]) =
      _$GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange;

  static void _initializeBuilder(
          GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchangeBuilder
              b) =>
      b..G__typename = 'KeyExchange';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get publicKey;
  String get sessionId;
  static Serializer<
          GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange>
      get serializer =>
          _$gChatroomKeyExchangeDataGetChatPracticantsOfChatroomKeyExchangeSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange
          .serializer,
      this) as Map<String, dynamic>);
  static GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange
              .serializer,
          json);
}
