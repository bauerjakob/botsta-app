import 'package:botsta_app/graphql/all_chat_practicants.data.gql.dart'
    show
        GGetAllChatPracticantsData,
        GGetAllChatPracticantsData_allChatPracticants;
import 'package:botsta_app/graphql/all_chat_practicants.req.gql.dart'
    show GGetAllChatPracticantsReq;
import 'package:botsta_app/graphql/all_chat_practicants.var.gql.dart'
    show GGetAllChatPracticantsVars;
import 'package:botsta_app/graphql/chatroom-messages.data.gql.dart'
    show
        GGetChatroomMessagesData,
        GGetChatroomMessagesData_chatroom,
        GGetChatroomMessagesData_chatroom_messages,
        GGetChatroomMessagesData_chatroom_messages_sender;
import 'package:botsta_app/graphql/chatroom-messages.req.gql.dart'
    show GGetChatroomMessagesReq;
import 'package:botsta_app/graphql/chatroom-messages.var.gql.dart'
    show GGetChatroomMessagesVars;
import 'package:botsta_app/graphql/chatroom_key_exchange.data.gql.dart'
    show
        GChatroomKeyExchangeData,
        GChatroomKeyExchangeData_getChatPracticantsOfChatroom,
        GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange;
import 'package:botsta_app/graphql/chatroom_key_exchange.req.gql.dart'
    show GChatroomKeyExchangeReq;
import 'package:botsta_app/graphql/chatroom_key_exchange.var.gql.dart'
    show GChatroomKeyExchangeVars;
import 'package:botsta_app/graphql/chatrooms.data.gql.dart'
    show
        GGetChatroomsData,
        GGetChatroomsData_chatrooms,
        GGetChatroomsData_chatrooms_latestMessage,
        GGetChatroomsData_chatrooms_latestMessage_sender;
import 'package:botsta_app/graphql/chatrooms.req.gql.dart'
    show GGetChatroomsReq;
import 'package:botsta_app/graphql/chatrooms.var.gql.dart'
    show GGetChatroomsVars;
import 'package:botsta_app/graphql/create_bot.data.gql.dart'
    show GCreateBotData;
import 'package:botsta_app/graphql/create_bot.req.gql.dart' show GCreateBotReq;
import 'package:botsta_app/graphql/create_bot.var.gql.dart' show GCreateBotVars;
import 'package:botsta_app/graphql/create_chatroom_group.data.gql.dart'
    show GCreateChatroomGroupData, GCreateChatroomGroupData_newChatroomGroup;
import 'package:botsta_app/graphql/create_chatroom_group.req.gql.dart'
    show GCreateChatroomGroupReq;
import 'package:botsta_app/graphql/create_chatroom_group.var.gql.dart'
    show GCreateChatroomGroupVars;
import 'package:botsta_app/graphql/create_chatroom_single.data.gql.dart'
    show GCreateChatroomSingleData, GCreateChatroomSingleData_newChatroomSingle;
import 'package:botsta_app/graphql/create_chatroom_single.req.gql.dart'
    show GCreateChatroomSingleReq;
import 'package:botsta_app/graphql/create_chatroom_single.var.gql.dart'
    show GCreateChatroomSingleVars;
import 'package:botsta_app/graphql/delete_messages.data.gql.dart'
    show GDeleteMessagesData;
import 'package:botsta_app/graphql/delete_messages.req.gql.dart'
    show GDeleteMessagesReq;
import 'package:botsta_app/graphql/delete_messages.var.gql.dart'
    show GDeleteMessagesVars;
import 'package:botsta_app/graphql/get_own_bots.data.gql.dart'
    show GGetOwnBotsData, GGetOwnBotsData_getOwnBots;
import 'package:botsta_app/graphql/get_own_bots.req.gql.dart'
    show GGetOwnBotsReq;
import 'package:botsta_app/graphql/get_own_bots.var.gql.dart'
    show GGetOwnBotsVars;
import 'package:botsta_app/graphql/login.data.gql.dart'
    show GLoginData, GLoginData_login;
import 'package:botsta_app/graphql/login.req.gql.dart' show GLoginReq;
import 'package:botsta_app/graphql/login.var.gql.dart' show GLoginVars;
import 'package:botsta_app/graphql/logout.data.gql.dart' show GLogoutData;
import 'package:botsta_app/graphql/logout.req.gql.dart' show GLogoutReq;
import 'package:botsta_app/graphql/logout.var.gql.dart' show GLogoutVars;
import 'package:botsta_app/graphql/message-subscription.data.gql.dart'
    show
        GMessageSubscriptionData,
        GMessageSubscriptionData_messageReceived,
        GMessageSubscriptionData_messageReceived_sender;
import 'package:botsta_app/graphql/message-subscription.req.gql.dart'
    show GMessageSubscriptionReq;
import 'package:botsta_app/graphql/message-subscription.var.gql.dart'
    show GMessageSubscriptionVars;
import 'package:botsta_app/graphql/post-message.data.gql.dart'
    show
        GPostMessageData,
        GPostMessageData_postMessage,
        GPostMessageData_postMessage_sender;
import 'package:botsta_app/graphql/post-message.req.gql.dart'
    show GPostMessageReq;
import 'package:botsta_app/graphql/post-message.var.gql.dart'
    show GPostMessageVars;
import 'package:botsta_app/graphql/refresh-token.data.gql.dart'
    show GRefreshTokenData, GRefreshTokenData_refreshToken;
import 'package:botsta_app/graphql/refresh-token.req.gql.dart'
    show GRefreshTokenReq;
import 'package:botsta_app/graphql/refresh-token.var.gql.dart'
    show GRefreshTokenVars;
import 'package:botsta_app/graphql/register_user.data.gql.dart'
    show GRegisterUserData, GRegisterUserData_register;
import 'package:botsta_app/graphql/register_user.req.gql.dart'
    show GRegisterUserReq;
import 'package:botsta_app/graphql/register_user.var.gql.dart'
    show GRegisterUserVars;
import 'package:botsta_app/graphql/schema.schema.gql.dart' show GDateTimeOffset;
import 'package:botsta_app/graphql/who_am_i.data.gql.dart'
    show GWhoAmIData, GWhoAmIData_whoami;
import 'package:botsta_app/graphql/who_am_i.req.gql.dart' show GWhoAmIReq;
import 'package:botsta_app/graphql/who_am_i.var.gql.dart' show GWhoAmIVars;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GChatroomKeyExchangeData,
  GChatroomKeyExchangeData_getChatPracticantsOfChatroom,
  GChatroomKeyExchangeData_getChatPracticantsOfChatroom_keyExchange,
  GChatroomKeyExchangeReq,
  GChatroomKeyExchangeVars,
  GCreateBotData,
  GCreateBotReq,
  GCreateBotVars,
  GCreateChatroomGroupData,
  GCreateChatroomGroupData_newChatroomGroup,
  GCreateChatroomGroupReq,
  GCreateChatroomGroupVars,
  GCreateChatroomSingleData,
  GCreateChatroomSingleData_newChatroomSingle,
  GCreateChatroomSingleReq,
  GCreateChatroomSingleVars,
  GDateTimeOffset,
  GDeleteMessagesData,
  GDeleteMessagesReq,
  GDeleteMessagesVars,
  GGetAllChatPracticantsData,
  GGetAllChatPracticantsData_allChatPracticants,
  GGetAllChatPracticantsReq,
  GGetAllChatPracticantsVars,
  GGetChatroomMessagesData,
  GGetChatroomMessagesData_chatroom,
  GGetChatroomMessagesData_chatroom_messages,
  GGetChatroomMessagesData_chatroom_messages_sender,
  GGetChatroomMessagesReq,
  GGetChatroomMessagesVars,
  GGetChatroomsData,
  GGetChatroomsData_chatrooms,
  GGetChatroomsData_chatrooms_latestMessage,
  GGetChatroomsData_chatrooms_latestMessage_sender,
  GGetChatroomsReq,
  GGetChatroomsVars,
  GGetOwnBotsData,
  GGetOwnBotsData_getOwnBots,
  GGetOwnBotsReq,
  GGetOwnBotsVars,
  GLoginData,
  GLoginData_login,
  GLoginReq,
  GLoginVars,
  GLogoutData,
  GLogoutReq,
  GLogoutVars,
  GMessageSubscriptionData,
  GMessageSubscriptionData_messageReceived,
  GMessageSubscriptionData_messageReceived_sender,
  GMessageSubscriptionReq,
  GMessageSubscriptionVars,
  GPostMessageData,
  GPostMessageData_postMessage,
  GPostMessageData_postMessage_sender,
  GPostMessageReq,
  GPostMessageVars,
  GRefreshTokenData,
  GRefreshTokenData_refreshToken,
  GRefreshTokenReq,
  GRefreshTokenVars,
  GRegisterUserData,
  GRegisterUserData_register,
  GRegisterUserReq,
  GRegisterUserVars,
  GWhoAmIData,
  GWhoAmIData_whoami,
  GWhoAmIReq,
  GWhoAmIVars
])
final Serializers serializers = _serializersBuilder.build();
