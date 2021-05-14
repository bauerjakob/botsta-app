// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/register_user.ast.gql.dart' as _i5;
import 'package:botsta_app/graphql/register_user.data.gql.dart' as _i2;
import 'package:botsta_app/graphql/register_user.var.gql.dart' as _i3;
import 'package:botsta_app/graphql/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'register_user.req.gql.g.dart';

abstract class GRegisterUserReq
    implements
        Built<GRegisterUserReq, GRegisterUserReqBuilder>,
        _i1.OperationRequest<_i2.GRegisterUserData, _i3.GRegisterUserVars> {
  GRegisterUserReq._();

  factory GRegisterUserReq([Function(GRegisterUserReqBuilder b) updates]) =
      _$GRegisterUserReq;

  static void _initializeBuilder(GRegisterUserReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'RegisterUser')
    ..executeOnListen = true;
  _i3.GRegisterUserVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GRegisterUserData? Function(
      _i2.GRegisterUserData?, _i2.GRegisterUserData?)? get updateResult;
  _i2.GRegisterUserData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GRegisterUserData? parseData(Map<String, dynamic> json) =>
      _i2.GRegisterUserData.fromJson(json);
  static Serializer<GRegisterUserReq> get serializer =>
      _$gRegisterUserReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GRegisterUserReq.serializer, this)
          as Map<String, dynamic>);
  static GRegisterUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GRegisterUserReq.serializer, json);
}
