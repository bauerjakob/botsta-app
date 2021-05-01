// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post-message.data.gql.g.dart';

abstract class GPostMessageData
    implements Built<GPostMessageData, GPostMessageDataBuilder> {
  GPostMessageData._();

  factory GPostMessageData([Function(GPostMessageDataBuilder b) updates]) =
      _$GPostMessageData;

  static void _initializeBuilder(GPostMessageDataBuilder b) =>
      b..G__typename = 'BotstaMutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPostMessageData_postMessage? get postMessage;
  static Serializer<GPostMessageData> get serializer =>
      _$gPostMessageDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GPostMessageData.serializer, this)
          as Map<String, dynamic>);
  static GPostMessageData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GPostMessageData.serializer, json);
}

abstract class GPostMessageData_postMessage
    implements
        Built<GPostMessageData_postMessage,
            GPostMessageData_postMessageBuilder> {
  GPostMessageData_postMessage._();

  factory GPostMessageData_postMessage(
          [Function(GPostMessageData_postMessageBuilder b) updates]) =
      _$GPostMessageData_postMessage;

  static void _initializeBuilder(GPostMessageData_postMessageBuilder b) =>
      b..G__typename = 'GraphMessageType';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get senderId;
  static Serializer<GPostMessageData_postMessage> get serializer =>
      _$gPostMessageDataPostMessageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GPostMessageData_postMessage.serializer, this) as Map<String, dynamic>);
  static GPostMessageData_postMessage? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GPostMessageData_postMessage.serializer, json);
}
