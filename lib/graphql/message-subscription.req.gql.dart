// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/message-subscription.ast.gql.dart' as _i5;
import 'package:botsta_app/graphql/message-subscription.data.gql.dart' as _i2;
import 'package:botsta_app/graphql/message-subscription.var.gql.dart' as _i3;
import 'package:botsta_app/graphql/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'message-subscription.req.gql.g.dart';

abstract class GMessageSubscriptionReq
    implements
        Built<GMessageSubscriptionReq, GMessageSubscriptionReqBuilder>,
        _i1.OperationRequest<_i2.GMessageSubscriptionData,
            _i3.GMessageSubscriptionVars> {
  GMessageSubscriptionReq._();

  factory GMessageSubscriptionReq(
          [Function(GMessageSubscriptionReqBuilder b) updates]) =
      _$GMessageSubscriptionReq;

  static void _initializeBuilder(GMessageSubscriptionReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'MessageSubscription')
    ..executeOnListen = true;
  _i3.GMessageSubscriptionVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GMessageSubscriptionData? Function(
          _i2.GMessageSubscriptionData?, _i2.GMessageSubscriptionData?)?
      get updateResult;
  _i2.GMessageSubscriptionData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GMessageSubscriptionData? parseData(Map<String, dynamic> json) =>
      _i2.GMessageSubscriptionData.fromJson(json);
  static Serializer<GMessageSubscriptionReq> get serializer =>
      _$gMessageSubscriptionReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GMessageSubscriptionReq.serializer, this)
          as Map<String, dynamic>);
  static GMessageSubscriptionReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GMessageSubscriptionReq.serializer, json);
}
