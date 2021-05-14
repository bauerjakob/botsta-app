// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_chatroom_single.data.gql.g.dart';

abstract class GCreateChatroomSingleData
    implements
        Built<GCreateChatroomSingleData, GCreateChatroomSingleDataBuilder> {
  GCreateChatroomSingleData._();

  factory GCreateChatroomSingleData(
          [Function(GCreateChatroomSingleDataBuilder b) updates]) =
      _$GCreateChatroomSingleData;

  static void _initializeBuilder(GCreateChatroomSingleDataBuilder b) =>
      b..G__typename = 'BotstaMutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateChatroomSingleData_newChatroomSingle? get newChatroomSingle;
  static Serializer<GCreateChatroomSingleData> get serializer =>
      _$gCreateChatroomSingleDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCreateChatroomSingleData.serializer, this)
          as Map<String, dynamic>);
  static GCreateChatroomSingleData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCreateChatroomSingleData.serializer, json);
}

abstract class GCreateChatroomSingleData_newChatroomSingle
    implements
        Built<GCreateChatroomSingleData_newChatroomSingle,
            GCreateChatroomSingleData_newChatroomSingleBuilder> {
  GCreateChatroomSingleData_newChatroomSingle._();

  factory GCreateChatroomSingleData_newChatroomSingle(
      [Function(GCreateChatroomSingleData_newChatroomSingleBuilder b)
          updates]) = _$GCreateChatroomSingleData_newChatroomSingle;

  static void _initializeBuilder(
          GCreateChatroomSingleData_newChatroomSingleBuilder b) =>
      b..G__typename = 'GraphChatroomType';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  static Serializer<GCreateChatroomSingleData_newChatroomSingle>
      get serializer => _$gCreateChatroomSingleDataNewChatroomSingleSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GCreateChatroomSingleData_newChatroomSingle.serializer, this)
      as Map<String, dynamic>);
  static GCreateChatroomSingleData_newChatroomSingle? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCreateChatroomSingleData_newChatroomSingle.serializer, json);
}
