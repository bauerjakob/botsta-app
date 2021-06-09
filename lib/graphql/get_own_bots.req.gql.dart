// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/get_own_bots.ast.gql.dart' as _i5;
import 'package:botsta_app/graphql/get_own_bots.data.gql.dart' as _i2;
import 'package:botsta_app/graphql/get_own_bots.var.gql.dart' as _i3;
import 'package:botsta_app/graphql/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'get_own_bots.req.gql.g.dart';

abstract class GGetOwnBotsReq
    implements
        Built<GGetOwnBotsReq, GGetOwnBotsReqBuilder>,
        _i1.OperationRequest<_i2.GGetOwnBotsData, _i3.GGetOwnBotsVars> {
  GGetOwnBotsReq._();

  factory GGetOwnBotsReq([Function(GGetOwnBotsReqBuilder b) updates]) =
      _$GGetOwnBotsReq;

  static void _initializeBuilder(GGetOwnBotsReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetOwnBots')
    ..executeOnListen = true;
  _i3.GGetOwnBotsVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetOwnBotsData? Function(_i2.GGetOwnBotsData?, _i2.GGetOwnBotsData?)?
      get updateResult;
  _i2.GGetOwnBotsData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetOwnBotsData? parseData(Map<String, dynamic> json) =>
      _i2.GGetOwnBotsData.fromJson(json);
  static Serializer<GGetOwnBotsReq> get serializer =>
      _$gGetOwnBotsReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetOwnBotsReq.serializer, this)
          as Map<String, dynamic>);
  static GGetOwnBotsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetOwnBotsReq.serializer, json);
}
