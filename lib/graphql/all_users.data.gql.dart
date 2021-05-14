// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'all_users.data.gql.g.dart';

abstract class GGetAllUsersData
    implements Built<GGetAllUsersData, GGetAllUsersDataBuilder> {
  GGetAllUsersData._();

  factory GGetAllUsersData([Function(GGetAllUsersDataBuilder b) updates]) =
      _$GGetAllUsersData;

  static void _initializeBuilder(GGetAllUsersDataBuilder b) =>
      b..G__typename = 'BotstaQuery';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetAllUsersData_allUsers>? get allUsers;
  static Serializer<GGetAllUsersData> get serializer =>
      _$gGetAllUsersDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetAllUsersData.serializer, this)
          as Map<String, dynamic>);
  static GGetAllUsersData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetAllUsersData.serializer, json);
}

abstract class GGetAllUsersData_allUsers
    implements
        Built<GGetAllUsersData_allUsers, GGetAllUsersData_allUsersBuilder> {
  GGetAllUsersData_allUsers._();

  factory GGetAllUsersData_allUsers(
          [Function(GGetAllUsersData_allUsersBuilder b) updates]) =
      _$GGetAllUsersData_allUsers;

  static void _initializeBuilder(GGetAllUsersData_allUsersBuilder b) =>
      b..G__typename = 'GraphUserType';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get username;
  static Serializer<GGetAllUsersData_allUsers> get serializer =>
      _$gGetAllUsersDataAllUsersSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetAllUsersData_allUsers.serializer, this)
          as Map<String, dynamic>);
  static GGetAllUsersData_allUsers? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetAllUsersData_allUsers.serializer, json);
}
