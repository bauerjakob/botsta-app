// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/schema.schema.gql.dart' as _i2;
import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message-subscription.data.gql.g.dart';

abstract class GMessageSubscriptionData
    implements
        Built<GMessageSubscriptionData, GMessageSubscriptionDataBuilder> {
  GMessageSubscriptionData._();

  factory GMessageSubscriptionData(
          [Function(GMessageSubscriptionDataBuilder b) updates]) =
      _$GMessageSubscriptionData;

  static void _initializeBuilder(GMessageSubscriptionDataBuilder b) =>
      b..G__typename = 'BotstaSubscription';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMessageSubscriptionData_messageReceived? get messageReceived;
  static Serializer<GMessageSubscriptionData> get serializer =>
      _$gMessageSubscriptionDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GMessageSubscriptionData.serializer, this)
          as Map<String, dynamic>);
  static GMessageSubscriptionData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GMessageSubscriptionData.serializer, json);
}

abstract class GMessageSubscriptionData_messageReceived
    implements
        Built<GMessageSubscriptionData_messageReceived,
            GMessageSubscriptionData_messageReceivedBuilder> {
  GMessageSubscriptionData_messageReceived._();

  factory GMessageSubscriptionData_messageReceived(
      [Function(GMessageSubscriptionData_messageReceivedBuilder b)
          updates]) = _$GMessageSubscriptionData_messageReceived;

  static void _initializeBuilder(
          GMessageSubscriptionData_messageReceivedBuilder b) =>
      b..G__typename = 'GraphMessageType';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get message;
  String get chatroomId;
  String get senderId;
  String get id;
  _i2.GDateTimeOffset get sendTime;
  static Serializer<GMessageSubscriptionData_messageReceived> get serializer =>
      _$gMessageSubscriptionDataMessageReceivedSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GMessageSubscriptionData_messageReceived.serializer, this)
      as Map<String, dynamic>);
  static GMessageSubscriptionData_messageReceived? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GMessageSubscriptionData_messageReceived.serializer, json);
}
