// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/post-message.ast.gql.dart' as _i5;
import 'package:botsta_app/graphql/post-message.data.gql.dart' as _i2;
import 'package:botsta_app/graphql/post-message.var.gql.dart' as _i3;
import 'package:botsta_app/graphql/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'post-message.req.gql.g.dart';

abstract class GPostMessageReq
    implements
        Built<GPostMessageReq, GPostMessageReqBuilder>,
        _i1.OperationRequest<_i2.GPostMessageData, _i3.GPostMessageVars> {
  GPostMessageReq._();

  factory GPostMessageReq([Function(GPostMessageReqBuilder b) updates]) =
      _$GPostMessageReq;

  static void _initializeBuilder(GPostMessageReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'PostMessage')
    ..executeOnListen = true;
  _i3.GPostMessageVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GPostMessageData? Function(_i2.GPostMessageData?, _i2.GPostMessageData?)?
      get updateResult;
  _i2.GPostMessageData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GPostMessageData? parseData(Map<String, dynamic> json) =>
      _i2.GPostMessageData.fromJson(json);
  static Serializer<GPostMessageReq> get serializer =>
      _$gPostMessageReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GPostMessageReq.serializer, this)
          as Map<String, dynamic>);
  static GPostMessageReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GPostMessageReq.serializer, json);
}
