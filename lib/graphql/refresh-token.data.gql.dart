// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'refresh-token.data.gql.g.dart';

abstract class GRefreshTokenData
    implements Built<GRefreshTokenData, GRefreshTokenDataBuilder> {
  GRefreshTokenData._();

  factory GRefreshTokenData([Function(GRefreshTokenDataBuilder b) updates]) =
      _$GRefreshTokenData;

  static void _initializeBuilder(GRefreshTokenDataBuilder b) =>
      b..G__typename = 'BotstaMutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRefreshTokenData_refreshToken? get refreshToken;
  static Serializer<GRefreshTokenData> get serializer =>
      _$gRefreshTokenDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRefreshTokenData.serializer, this)
          as Map<String, dynamic>);
  static GRefreshTokenData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRefreshTokenData.serializer, json);
}

abstract class GRefreshTokenData_refreshToken
    implements
        Built<GRefreshTokenData_refreshToken,
            GRefreshTokenData_refreshTokenBuilder> {
  GRefreshTokenData_refreshToken._();

  factory GRefreshTokenData_refreshToken(
          [Function(GRefreshTokenData_refreshTokenBuilder b) updates]) =
      _$GRefreshTokenData_refreshToken;

  static void _initializeBuilder(GRefreshTokenData_refreshTokenBuilder b) =>
      b..G__typename = 'RefreshToken';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get token;
  bool get hasError;
  String? get errorCode;
  String? get errorMessage;
  static Serializer<GRefreshTokenData_refreshToken> get serializer =>
      _$gRefreshTokenDataRefreshTokenSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GRefreshTokenData_refreshToken.serializer, this) as Map<String, dynamic>);
  static GRefreshTokenData_refreshToken? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GRefreshTokenData_refreshToken.serializer, json);
}
