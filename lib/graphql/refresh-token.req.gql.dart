// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/refresh-token.ast.gql.dart' as _i5;
import 'package:botsta_app/graphql/refresh-token.data.gql.dart' as _i2;
import 'package:botsta_app/graphql/refresh-token.var.gql.dart' as _i3;
import 'package:botsta_app/graphql/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'refresh-token.req.gql.g.dart';

abstract class GRefresthTokenReq
    implements
        Built<GRefresthTokenReq, GRefresthTokenReqBuilder>,
        _i1.OperationRequest<_i2.GRefresthTokenData, _i3.GRefresthTokenVars> {
  GRefresthTokenReq._();

  factory GRefresthTokenReq([Function(GRefresthTokenReqBuilder b) updates]) =
      _$GRefresthTokenReq;

  static void _initializeBuilder(GRefresthTokenReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'RefresthToken')
    ..executeOnListen = true;
  _i3.GRefresthTokenVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GRefresthTokenData? Function(
      _i2.GRefresthTokenData?, _i2.GRefresthTokenData?)? get updateResult;
  _i2.GRefresthTokenData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GRefresthTokenData? parseData(Map<String, dynamic> json) =>
      _i2.GRefresthTokenData.fromJson(json);
  static Serializer<GRefresthTokenReq> get serializer =>
      _$gRefresthTokenReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GRefresthTokenReq.serializer, this)
          as Map<String, dynamic>);
  static GRefresthTokenReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GRefresthTokenReq.serializer, json);
}
