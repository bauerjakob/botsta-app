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

abstract class GRefreshTokenReq
    implements
        Built<GRefreshTokenReq, GRefreshTokenReqBuilder>,
        _i1.OperationRequest<_i2.GRefreshTokenData, _i3.GRefreshTokenVars> {
  GRefreshTokenReq._();

  factory GRefreshTokenReq([Function(GRefreshTokenReqBuilder b) updates]) =
      _$GRefreshTokenReq;

  static void _initializeBuilder(GRefreshTokenReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'RefreshToken')
    ..executeOnListen = true;
  _i3.GRefreshTokenVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GRefreshTokenData? Function(
      _i2.GRefreshTokenData?, _i2.GRefreshTokenData?)? get updateResult;
  _i2.GRefreshTokenData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GRefreshTokenData? parseData(Map<String, dynamic> json) =>
      _i2.GRefreshTokenData.fromJson(json);
  static Serializer<GRefreshTokenReq> get serializer =>
      _$gRefreshTokenReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GRefreshTokenReq.serializer, this)
          as Map<String, dynamic>);
  static GRefreshTokenReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GRefreshTokenReq.serializer, json);
}
