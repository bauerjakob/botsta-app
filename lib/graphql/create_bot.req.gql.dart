// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/create_bot.ast.gql.dart' as _i5;
import 'package:botsta_app/graphql/create_bot.data.gql.dart' as _i2;
import 'package:botsta_app/graphql/create_bot.var.gql.dart' as _i3;
import 'package:botsta_app/graphql/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'create_bot.req.gql.g.dart';

abstract class GCreateBotReq
    implements
        Built<GCreateBotReq, GCreateBotReqBuilder>,
        _i1.OperationRequest<_i2.GCreateBotData, _i3.GCreateBotVars> {
  GCreateBotReq._();

  factory GCreateBotReq([Function(GCreateBotReqBuilder b) updates]) =
      _$GCreateBotReq;

  static void _initializeBuilder(GCreateBotReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'CreateBot')
    ..executeOnListen = true;
  _i3.GCreateBotVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GCreateBotData? Function(_i2.GCreateBotData?, _i2.GCreateBotData?)?
      get updateResult;
  _i2.GCreateBotData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GCreateBotData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateBotData.fromJson(json);
  static Serializer<GCreateBotReq> get serializer => _$gCreateBotReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GCreateBotReq.serializer, this)
          as Map<String, dynamic>);
  static GCreateBotReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GCreateBotReq.serializer, json);
}
