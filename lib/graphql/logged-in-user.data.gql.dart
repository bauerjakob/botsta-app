// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'logged-in-user.data.gql.g.dart';

abstract class GLoggedInUserData
    implements Built<GLoggedInUserData, GLoggedInUserDataBuilder> {
  GLoggedInUserData._();

  factory GLoggedInUserData([Function(GLoggedInUserDataBuilder b) updates]) =
      _$GLoggedInUserData;

  static void _initializeBuilder(GLoggedInUserDataBuilder b) =>
      b..G__typename = 'BotstaQuery';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GLoggedInUserData_whoami? get whoami;
  static Serializer<GLoggedInUserData> get serializer =>
      _$gLoggedInUserDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLoggedInUserData.serializer, this)
          as Map<String, dynamic>);
  static GLoggedInUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GLoggedInUserData.serializer, json);
}

abstract class GLoggedInUserData_whoami
    implements
        Built<GLoggedInUserData_whoami, GLoggedInUserData_whoamiBuilder> {
  GLoggedInUserData_whoami._();

  factory GLoggedInUserData_whoami(
          [Function(GLoggedInUserData_whoamiBuilder b) updates]) =
      _$GLoggedInUserData_whoami;

  static void _initializeBuilder(GLoggedInUserData_whoamiBuilder b) =>
      b..G__typename = 'GraphUserType';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get username;
  static Serializer<GLoggedInUserData_whoami> get serializer =>
      _$gLoggedInUserDataWhoamiSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLoggedInUserData_whoami.serializer, this)
          as Map<String, dynamic>);
  static GLoggedInUserData_whoami? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GLoggedInUserData_whoami.serializer, json);
}
