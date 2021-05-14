// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/all_users.ast.gql.dart' as _i5;
import 'package:botsta_app/graphql/all_users.data.gql.dart' as _i2;
import 'package:botsta_app/graphql/all_users.var.gql.dart' as _i3;
import 'package:botsta_app/graphql/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'all_users.req.gql.g.dart';

abstract class GGetAllUsersReq
    implements
        Built<GGetAllUsersReq, GGetAllUsersReqBuilder>,
        _i1.OperationRequest<_i2.GGetAllUsersData, _i3.GGetAllUsersVars> {
  GGetAllUsersReq._();

  factory GGetAllUsersReq([Function(GGetAllUsersReqBuilder b) updates]) =
      _$GGetAllUsersReq;

  static void _initializeBuilder(GGetAllUsersReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetAllUsers')
    ..executeOnListen = true;
  _i3.GGetAllUsersVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetAllUsersData? Function(_i2.GGetAllUsersData?, _i2.GGetAllUsersData?)?
      get updateResult;
  _i2.GGetAllUsersData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetAllUsersData? parseData(Map<String, dynamic> json) =>
      _i2.GGetAllUsersData.fromJson(json);
  static Serializer<GGetAllUsersReq> get serializer =>
      _$gGetAllUsersReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetAllUsersReq.serializer, this)
          as Map<String, dynamic>);
  static GGetAllUsersReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetAllUsersReq.serializer, json);
}
