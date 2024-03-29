// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'logout.data.gql.g.dart';

abstract class GLogoutData implements Built<GLogoutData, GLogoutDataBuilder> {
  GLogoutData._();

  factory GLogoutData([Function(GLogoutDataBuilder b) updates]) = _$GLogoutData;

  static void _initializeBuilder(GLogoutDataBuilder b) =>
      b..G__typename = 'BotstaMutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get logout;
  static Serializer<GLogoutData> get serializer => _$gLogoutDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLogoutData.serializer, this)
          as Map<String, dynamic>);
  static GLogoutData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GLogoutData.serializer, json);
}
