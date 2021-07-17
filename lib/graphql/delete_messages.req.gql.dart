// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/delete_messages.ast.gql.dart' as _i5;
import 'package:botsta_app/graphql/delete_messages.data.gql.dart' as _i2;
import 'package:botsta_app/graphql/delete_messages.var.gql.dart' as _i3;
import 'package:botsta_app/graphql/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'delete_messages.req.gql.g.dart';

abstract class GDeleteMessagesReq
    implements
        Built<GDeleteMessagesReq, GDeleteMessagesReqBuilder>,
        _i1.OperationRequest<_i2.GDeleteMessagesData, _i3.GDeleteMessagesVars> {
  GDeleteMessagesReq._();

  factory GDeleteMessagesReq([Function(GDeleteMessagesReqBuilder b) updates]) =
      _$GDeleteMessagesReq;

  static void _initializeBuilder(GDeleteMessagesReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'DeleteMessages')
    ..executeOnListen = true;
  _i3.GDeleteMessagesVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GDeleteMessagesData? Function(
      _i2.GDeleteMessagesData?, _i2.GDeleteMessagesData?)? get updateResult;
  _i2.GDeleteMessagesData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GDeleteMessagesData? parseData(Map<String, dynamic> json) =>
      _i2.GDeleteMessagesData.fromJson(json);
  static Serializer<GDeleteMessagesReq> get serializer =>
      _$gDeleteMessagesReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GDeleteMessagesReq.serializer, this)
          as Map<String, dynamic>);
  static GDeleteMessagesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GDeleteMessagesReq.serializer, json);
}
