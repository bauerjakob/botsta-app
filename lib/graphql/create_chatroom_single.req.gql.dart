// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/create_chatroom_single.ast.gql.dart' as _i5;
import 'package:botsta_app/graphql/create_chatroom_single.data.gql.dart' as _i2;
import 'package:botsta_app/graphql/create_chatroom_single.var.gql.dart' as _i3;
import 'package:botsta_app/graphql/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'create_chatroom_single.req.gql.g.dart';

abstract class GCreateChatroomSingleReq
    implements
        Built<GCreateChatroomSingleReq, GCreateChatroomSingleReqBuilder>,
        _i1.OperationRequest<_i2.GCreateChatroomSingleData,
            _i3.GCreateChatroomSingleVars> {
  GCreateChatroomSingleReq._();

  factory GCreateChatroomSingleReq(
          [Function(GCreateChatroomSingleReqBuilder b) updates]) =
      _$GCreateChatroomSingleReq;

  static void _initializeBuilder(GCreateChatroomSingleReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'CreateChatroomSingle')
    ..executeOnListen = true;
  _i3.GCreateChatroomSingleVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GCreateChatroomSingleData? Function(
          _i2.GCreateChatroomSingleData?, _i2.GCreateChatroomSingleData?)?
      get updateResult;
  _i2.GCreateChatroomSingleData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GCreateChatroomSingleData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateChatroomSingleData.fromJson(json);
  static Serializer<GCreateChatroomSingleReq> get serializer =>
      _$gCreateChatroomSingleReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GCreateChatroomSingleReq.serializer, this)
          as Map<String, dynamic>);
  static GCreateChatroomSingleReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GCreateChatroomSingleReq.serializer, json);
}
