// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/logged-in-user.ast.gql.dart' as _i5;
import 'package:botsta_app/graphql/logged-in-user.data.gql.dart' as _i2;
import 'package:botsta_app/graphql/logged-in-user.var.gql.dart' as _i3;
import 'package:botsta_app/graphql/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'logged-in-user.req.gql.g.dart';

abstract class GLoggedInUserReq
    implements
        Built<GLoggedInUserReq, GLoggedInUserReqBuilder>,
        _i1.OperationRequest<_i2.GLoggedInUserData, _i3.GLoggedInUserVars> {
  GLoggedInUserReq._();

  factory GLoggedInUserReq([Function(GLoggedInUserReqBuilder b) updates]) =
      _$GLoggedInUserReq;

  static void _initializeBuilder(GLoggedInUserReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'LoggedInUser')
    ..executeOnListen = true;
  _i3.GLoggedInUserVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GLoggedInUserData? Function(
      _i2.GLoggedInUserData?, _i2.GLoggedInUserData?)? get updateResult;
  _i2.GLoggedInUserData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GLoggedInUserData? parseData(Map<String, dynamic> json) =>
      _i2.GLoggedInUserData.fromJson(json);
  static Serializer<GLoggedInUserReq> get serializer =>
      _$gLoggedInUserReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GLoggedInUserReq.serializer, this)
          as Map<String, dynamic>);
  static GLoggedInUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GLoggedInUserReq.serializer, json);
}
