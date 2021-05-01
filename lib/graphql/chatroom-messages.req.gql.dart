// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/chatroom-messages.ast.gql.dart' as _i5;
import 'package:botsta_app/graphql/chatroom-messages.data.gql.dart' as _i2;
import 'package:botsta_app/graphql/chatroom-messages.var.gql.dart' as _i3;
import 'package:botsta_app/graphql/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'chatroom-messages.req.gql.g.dart';

abstract class GGetChatroomMessagesReq
    implements
        Built<GGetChatroomMessagesReq, GGetChatroomMessagesReqBuilder>,
        _i1.OperationRequest<_i2.GGetChatroomMessagesData,
            _i3.GGetChatroomMessagesVars> {
  GGetChatroomMessagesReq._();

  factory GGetChatroomMessagesReq(
          [Function(GGetChatroomMessagesReqBuilder b) updates]) =
      _$GGetChatroomMessagesReq;

  static void _initializeBuilder(GGetChatroomMessagesReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'GetChatroomMessages')
    ..executeOnListen = true;
  _i3.GGetChatroomMessagesVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetChatroomMessagesData? Function(
          _i2.GGetChatroomMessagesData?, _i2.GGetChatroomMessagesData?)?
      get updateResult;
  _i2.GGetChatroomMessagesData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetChatroomMessagesData? parseData(Map<String, dynamic> json) =>
      _i2.GGetChatroomMessagesData.fromJson(json);
  static Serializer<GGetChatroomMessagesReq> get serializer =>
      _$gGetChatroomMessagesReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetChatroomMessagesReq.serializer, this)
          as Map<String, dynamic>);
  static GGetChatroomMessagesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetChatroomMessagesReq.serializer, json);
}
