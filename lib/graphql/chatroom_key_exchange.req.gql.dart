// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/chatroom_key_exchange.ast.gql.dart' as _i5;
import 'package:botsta_app/graphql/chatroom_key_exchange.data.gql.dart' as _i2;
import 'package:botsta_app/graphql/chatroom_key_exchange.var.gql.dart' as _i3;
import 'package:botsta_app/graphql/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'chatroom_key_exchange.req.gql.g.dart';

abstract class GChatroomKeyExchangeReq
    implements
        Built<GChatroomKeyExchangeReq, GChatroomKeyExchangeReqBuilder>,
        _i1.OperationRequest<_i2.GChatroomKeyExchangeData,
            _i3.GChatroomKeyExchangeVars> {
  GChatroomKeyExchangeReq._();

  factory GChatroomKeyExchangeReq(
          [Function(GChatroomKeyExchangeReqBuilder b) updates]) =
      _$GChatroomKeyExchangeReq;

  static void _initializeBuilder(GChatroomKeyExchangeReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'ChatroomKeyExchange')
    ..executeOnListen = true;
  _i3.GChatroomKeyExchangeVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GChatroomKeyExchangeData? Function(
          _i2.GChatroomKeyExchangeData?, _i2.GChatroomKeyExchangeData?)?
      get updateResult;
  _i2.GChatroomKeyExchangeData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GChatroomKeyExchangeData? parseData(Map<String, dynamic> json) =>
      _i2.GChatroomKeyExchangeData.fromJson(json);
  static Serializer<GChatroomKeyExchangeReq> get serializer =>
      _$gChatroomKeyExchangeReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GChatroomKeyExchangeReq.serializer, this)
          as Map<String, dynamic>);
  static GChatroomKeyExchangeReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GChatroomKeyExchangeReq.serializer, json);
}
