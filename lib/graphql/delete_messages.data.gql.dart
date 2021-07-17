// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_messages.data.gql.g.dart';

abstract class GDeleteMessagesData
    implements Built<GDeleteMessagesData, GDeleteMessagesDataBuilder> {
  GDeleteMessagesData._();

  factory GDeleteMessagesData(
      [Function(GDeleteMessagesDataBuilder b) updates]) = _$GDeleteMessagesData;

  static void _initializeBuilder(GDeleteMessagesDataBuilder b) =>
      b..G__typename = 'BotstaMutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get deleteMessages;
  static Serializer<GDeleteMessagesData> get serializer =>
      _$gDeleteMessagesDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GDeleteMessagesData.serializer, this)
          as Map<String, dynamic>);
  static GDeleteMessagesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GDeleteMessagesData.serializer, json);
}
