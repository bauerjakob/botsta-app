// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_chatroom_group.data.gql.g.dart';

abstract class GCreateChatroomGroupData
    implements
        Built<GCreateChatroomGroupData, GCreateChatroomGroupDataBuilder> {
  GCreateChatroomGroupData._();

  factory GCreateChatroomGroupData(
          [Function(GCreateChatroomGroupDataBuilder b) updates]) =
      _$GCreateChatroomGroupData;

  static void _initializeBuilder(GCreateChatroomGroupDataBuilder b) =>
      b..G__typename = 'BotstaMutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateChatroomGroupData_newChatroomGroup? get newChatroomGroup;
  static Serializer<GCreateChatroomGroupData> get serializer =>
      _$gCreateChatroomGroupDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCreateChatroomGroupData.serializer, this)
          as Map<String, dynamic>);
  static GCreateChatroomGroupData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCreateChatroomGroupData.serializer, json);
}

abstract class GCreateChatroomGroupData_newChatroomGroup
    implements
        Built<GCreateChatroomGroupData_newChatroomGroup,
            GCreateChatroomGroupData_newChatroomGroupBuilder> {
  GCreateChatroomGroupData_newChatroomGroup._();

  factory GCreateChatroomGroupData_newChatroomGroup(
      [Function(GCreateChatroomGroupData_newChatroomGroupBuilder b)
          updates]) = _$GCreateChatroomGroupData_newChatroomGroup;

  static void _initializeBuilder(
          GCreateChatroomGroupData_newChatroomGroupBuilder b) =>
      b..G__typename = 'GraphChatroomType';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  static Serializer<GCreateChatroomGroupData_newChatroomGroup> get serializer =>
      _$gCreateChatroomGroupDataNewChatroomGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GCreateChatroomGroupData_newChatroomGroup.serializer, this)
      as Map<String, dynamic>);
  static GCreateChatroomGroupData_newChatroomGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCreateChatroomGroupData_newChatroomGroup.serializer, json);
}
