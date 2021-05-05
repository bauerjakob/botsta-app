// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'refresh-token.data.gql.g.dart';

abstract class GRefresthTokenData
    implements Built<GRefresthTokenData, GRefresthTokenDataBuilder> {
  GRefresthTokenData._();

  factory GRefresthTokenData([Function(GRefresthTokenDataBuilder b) updates]) =
      _$GRefresthTokenData;

  static void _initializeBuilder(GRefresthTokenDataBuilder b) =>
      b..G__typename = 'BotstaMutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRefresthTokenData_refreshToken? get refreshToken;
  static Serializer<GRefresthTokenData> get serializer =>
      _$gRefresthTokenDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRefresthTokenData.serializer, this)
          as Map<String, dynamic>);
  static GRefresthTokenData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRefresthTokenData.serializer, json);
}

abstract class GRefresthTokenData_refreshToken
    implements
        Built<GRefresthTokenData_refreshToken,
            GRefresthTokenData_refreshTokenBuilder> {
  GRefresthTokenData_refreshToken._();

  factory GRefresthTokenData_refreshToken(
          [Function(GRefresthTokenData_refreshTokenBuilder b) updates]) =
      _$GRefresthTokenData_refreshToken;

  static void _initializeBuilder(GRefresthTokenData_refreshTokenBuilder b) =>
      b..G__typename = 'RefreshToken';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get token;
  bool get hasError;
  String? get errorCode;
  String? get errorMessage;
  static Serializer<GRefresthTokenData_refreshToken> get serializer =>
      _$gRefresthTokenDataRefreshTokenSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GRefresthTokenData_refreshToken.serializer, this)
      as Map<String, dynamic>);
  static GRefresthTokenData_refreshToken? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GRefresthTokenData_refreshToken.serializer, json);
}
