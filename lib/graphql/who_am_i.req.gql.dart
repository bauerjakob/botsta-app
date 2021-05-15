// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i6;
import 'package:botsta_app/graphql/who_am_i.ast.gql.dart' as _i5;
import 'package:botsta_app/graphql/who_am_i.data.gql.dart' as _i2;
import 'package:botsta_app/graphql/who_am_i.var.gql.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'who_am_i.req.gql.g.dart';

abstract class GWhoAmIReq
    implements
        Built<GWhoAmIReq, GWhoAmIReqBuilder>,
        _i1.OperationRequest<_i2.GWhoAmIData, _i3.GWhoAmIVars> {
  GWhoAmIReq._();

  factory GWhoAmIReq([Function(GWhoAmIReqBuilder b) updates]) = _$GWhoAmIReq;

  static void _initializeBuilder(GWhoAmIReqBuilder b) => b
    ..operation = _i4.Operation(document: _i5.document, operationName: 'WhoAmI')
    ..executeOnListen = true;
  _i3.GWhoAmIVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GWhoAmIData? Function(_i2.GWhoAmIData?, _i2.GWhoAmIData?)?
      get updateResult;
  _i2.GWhoAmIData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GWhoAmIData? parseData(Map<String, dynamic> json) =>
      _i2.GWhoAmIData.fromJson(json);
  static Serializer<GWhoAmIReq> get serializer => _$gWhoAmIReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GWhoAmIReq.serializer, this)
          as Map<String, dynamic>);
  static GWhoAmIReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GWhoAmIReq.serializer, json);
}
