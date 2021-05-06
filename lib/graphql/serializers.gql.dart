import 'package:botsta_app/graphql/chatroom-messages.data.gql.dart'
    show
        GGetChatroomMessagesData,
        GGetChatroomMessagesData_chatroom,
        GGetChatroomMessagesData_chatroom_messages;
import 'package:botsta_app/graphql/chatroom-messages.req.gql.dart'
    show GGetChatroomMessagesReq;
import 'package:botsta_app/graphql/chatroom-messages.var.gql.dart'
    show GGetChatroomMessagesVars;
import 'package:botsta_app/graphql/chatrooms.data.gql.dart'
    show
        GGetChatroomsData,
        GGetChatroomsData_chatrooms,
        GGetChatroomsData_chatrooms_latestMessage;
import 'package:botsta_app/graphql/chatrooms.req.gql.dart'
    show GGetChatroomsReq;
import 'package:botsta_app/graphql/chatrooms.var.gql.dart'
    show GGetChatroomsVars;
import 'package:botsta_app/graphql/logged-in-user.data.gql.dart'
    show GLoggedInUserData, GLoggedInUserData_whoami;
import 'package:botsta_app/graphql/logged-in-user.req.gql.dart'
    show GLoggedInUserReq;
import 'package:botsta_app/graphql/logged-in-user.var.gql.dart'
    show GLoggedInUserVars;
import 'package:botsta_app/graphql/login.data.gql.dart'
    show GLoginData, GLoginData_login;
import 'package:botsta_app/graphql/login.req.gql.dart' show GLoginReq;
import 'package:botsta_app/graphql/login.var.gql.dart' show GLoginVars;
import 'package:botsta_app/graphql/message-subscription.data.gql.dart'
    show GMessageSubscriptionData, GMessageSubscriptionData_messageReceived;
import 'package:botsta_app/graphql/message-subscription.req.gql.dart'
    show GMessageSubscriptionReq;
import 'package:botsta_app/graphql/message-subscription.var.gql.dart'
    show GMessageSubscriptionVars;
import 'package:botsta_app/graphql/post-message.data.gql.dart'
    show GPostMessageData, GPostMessageData_postMessage;
import 'package:botsta_app/graphql/post-message.req.gql.dart'
    show GPostMessageReq;
import 'package:botsta_app/graphql/post-message.var.gql.dart'
    show GPostMessageVars;
import 'package:botsta_app/graphql/refresh-token.data.gql.dart'
    show GRefresthTokenData, GRefresthTokenData_refreshToken;
import 'package:botsta_app/graphql/refresh-token.req.gql.dart'
    show GRefresthTokenReq;
import 'package:botsta_app/graphql/refresh-token.var.gql.dart'
    show GRefresthTokenVars;
import 'package:botsta_app/graphql/schema.schema.gql.dart' show GDateTimeOffset;
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
  GDateTimeOffset,
  GGetChatroomMessagesData,
  GGetChatroomMessagesData_chatroom,
  GGetChatroomMessagesData_chatroom_messages,
  GGetChatroomMessagesReq,
  GGetChatroomMessagesVars,
  GGetChatroomsData,
  GGetChatroomsData_chatrooms,
  GGetChatroomsData_chatrooms_latestMessage,
  GGetChatroomsReq,
  GGetChatroomsVars,
  GLoggedInUserData,
  GLoggedInUserData_whoami,
  GLoggedInUserReq,
  GLoggedInUserVars,
  GLoginData,
  GLoginData_login,
  GLoginReq,
  GLoginVars,
  GMessageSubscriptionData,
  GMessageSubscriptionData_messageReceived,
  GMessageSubscriptionReq,
  GMessageSubscriptionVars,
  GPostMessageData,
  GPostMessageData_postMessage,
  GPostMessageReq,
  GPostMessageVars,
  GRefresthTokenData,
  GRefresthTokenData_refreshToken,
  GRefresthTokenReq,
  GRefresthTokenVars
])
final Serializers serializers = _serializersBuilder.build();
