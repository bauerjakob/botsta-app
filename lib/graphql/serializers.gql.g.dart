// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(GCreateChatroomSingleData.serializer)
      ..add(GCreateChatroomSingleData_newChatroomSingle.serializer)
      ..add(GCreateChatroomSingleReq.serializer)
      ..add(GCreateChatroomSingleVars.serializer)
      ..add(GDateTimeOffset.serializer)
      ..add(GGetAllUsersData.serializer)
      ..add(GGetAllUsersData_allUsers.serializer)
      ..add(GGetAllUsersReq.serializer)
      ..add(GGetAllUsersVars.serializer)
      ..add(GGetChatroomMessagesData.serializer)
      ..add(GGetChatroomMessagesData_chatroom.serializer)
      ..add(GGetChatroomMessagesData_chatroom_messages.serializer)
      ..add(GGetChatroomMessagesReq.serializer)
      ..add(GGetChatroomMessagesVars.serializer)
      ..add(GGetChatroomsData.serializer)
      ..add(GGetChatroomsData_chatrooms.serializer)
      ..add(GGetChatroomsData_chatrooms_latestMessage.serializer)
      ..add(GGetChatroomsReq.serializer)
      ..add(GGetChatroomsVars.serializer)
      ..add(GLoggedInUserData.serializer)
      ..add(GLoggedInUserData_whoami.serializer)
      ..add(GLoggedInUserReq.serializer)
      ..add(GLoggedInUserVars.serializer)
      ..add(GLoginData.serializer)
      ..add(GLoginData_login.serializer)
      ..add(GLoginReq.serializer)
      ..add(GLoginVars.serializer)
      ..add(GMessageSubscriptionData.serializer)
      ..add(GMessageSubscriptionData_messageReceived.serializer)
      ..add(GMessageSubscriptionReq.serializer)
      ..add(GMessageSubscriptionVars.serializer)
      ..add(GPostMessageData.serializer)
      ..add(GPostMessageData_postMessage.serializer)
      ..add(GPostMessageReq.serializer)
      ..add(GPostMessageVars.serializer)
      ..add(GRefresthTokenData.serializer)
      ..add(GRefresthTokenData_refreshToken.serializer)
      ..add(GRefresthTokenReq.serializer)
      ..add(GRefresthTokenVars.serializer)
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGetAllUsersData_allUsers)]),
          () => new ListBuilder<GGetAllUsersData_allUsers>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GGetChatroomMessagesData_chatroom_messages)
          ]),
          () => new ListBuilder<GGetChatroomMessagesData_chatroom_messages>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGetChatroomsData_chatrooms)]),
          () => new ListBuilder<GGetChatroomsData_chatrooms>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
