// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/all_chat_practicants.ast.gql.dart' as _i5;
import 'package:botsta_app/graphql/all_chat_practicants.data.gql.dart' as _i2;
import 'package:botsta_app/graphql/all_chat_practicants.var.gql.dart' as _i3;
import 'package:botsta_app/graphql/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'all_chat_practicants.req.gql.g.dart';

abstract class GGetAllChatPracticantsReq
    implements
        Built<GGetAllChatPracticantsReq, GGetAllChatPracticantsReqBuilder>,
        _i1.OperationRequest<_i2.GGetAllChatPracticantsData,
            _i3.GGetAllChatPracticantsVars> {
  GGetAllChatPracticantsReq._();

  factory GGetAllChatPracticantsReq(
          [Function(GGetAllChatPracticantsReqBuilder b) updates]) =
      _$GGetAllChatPracticantsReq;

  static void _initializeBuilder(GGetAllChatPracticantsReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'GetAllChatPracticants')
    ..executeOnListen = true;
  _i3.GGetAllChatPracticantsVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetAllChatPracticantsData? Function(
          _i2.GGetAllChatPracticantsData?, _i2.GGetAllChatPracticantsData?)?
      get updateResult;
  _i2.GGetAllChatPracticantsData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetAllChatPracticantsData? parseData(Map<String, dynamic> json) =>
      _i2.GGetAllChatPracticantsData.fromJson(json);
  static Serializer<GGetAllChatPracticantsReq> get serializer =>
      _$gGetAllChatPracticantsReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetAllChatPracticantsReq.serializer, this)
          as Map<String, dynamic>);
  static GGetAllChatPracticantsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GGetAllChatPracticantsReq.serializer, json);
}
