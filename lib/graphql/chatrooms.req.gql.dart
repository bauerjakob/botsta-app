// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/chatrooms.ast.gql.dart' as _i5;
import 'package:botsta_app/graphql/chatrooms.data.gql.dart' as _i2;
import 'package:botsta_app/graphql/chatrooms.var.gql.dart' as _i3;
import 'package:botsta_app/graphql/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'chatrooms.req.gql.g.dart';

abstract class GGetChatroomsReq
    implements
        Built<GGetChatroomsReq, GGetChatroomsReqBuilder>,
        _i1.OperationRequest<_i2.GGetChatroomsData, _i3.GGetChatroomsVars> {
  GGetChatroomsReq._();

  factory GGetChatroomsReq([Function(GGetChatroomsReqBuilder b) updates]) =
      _$GGetChatroomsReq;

  static void _initializeBuilder(GGetChatroomsReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetChatrooms')
    ..executeOnListen = true;
  _i3.GGetChatroomsVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetChatroomsData? Function(
      _i2.GGetChatroomsData?, _i2.GGetChatroomsData?)? get updateResult;
  _i2.GGetChatroomsData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetChatroomsData? parseData(Map<String, dynamic> json) =>
      _i2.GGetChatroomsData.fromJson(json);
  static Serializer<GGetChatroomsReq> get serializer =>
      _$gGetChatroomsReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetChatroomsReq.serializer, this)
          as Map<String, dynamic>);
  static GGetChatroomsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetChatroomsReq.serializer, json);
}
