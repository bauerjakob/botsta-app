// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'register_user.data.gql.g.dart';

abstract class GRegisterUserData
    implements Built<GRegisterUserData, GRegisterUserDataBuilder> {
  GRegisterUserData._();

  factory GRegisterUserData([Function(GRegisterUserDataBuilder b) updates]) =
      _$GRegisterUserData;

  static void _initializeBuilder(GRegisterUserDataBuilder b) =>
      b..G__typename = 'BotstaMutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRegisterUserData_register? get register;
  static Serializer<GRegisterUserData> get serializer =>
      _$gRegisterUserDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRegisterUserData.serializer, this)
          as Map<String, dynamic>);
  static GRegisterUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRegisterUserData.serializer, json);
}

abstract class GRegisterUserData_register
    implements
        Built<GRegisterUserData_register, GRegisterUserData_registerBuilder> {
  GRegisterUserData_register._();

  factory GRegisterUserData_register(
          [Function(GRegisterUserData_registerBuilder b) updates]) =
      _$GRegisterUserData_register;

  static void _initializeBuilder(GRegisterUserData_registerBuilder b) =>
      b..G__typename = 'Login';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get token;
  String? get refreshToken;
  bool get hasError;
  static Serializer<GRegisterUserData_register> get serializer =>
      _$gRegisterUserDataRegisterSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GRegisterUserData_register.serializer, this) as Map<String, dynamic>);
  static GRegisterUserData_register? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GRegisterUserData_register.serializer, json);
}
