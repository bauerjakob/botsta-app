// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:botsta_app/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'who_am_i.data.gql.g.dart';

abstract class GWhoAmIData implements Built<GWhoAmIData, GWhoAmIDataBuilder> {
  GWhoAmIData._();

  factory GWhoAmIData([Function(GWhoAmIDataBuilder b) updates]) = _$GWhoAmIData;

  static void _initializeBuilder(GWhoAmIDataBuilder b) =>
      b..G__typename = 'BotstaQuery';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GWhoAmIData_whoami? get whoami;
  static Serializer<GWhoAmIData> get serializer => _$gWhoAmIDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GWhoAmIData.serializer, this)
          as Map<String, dynamic>);
  static GWhoAmIData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GWhoAmIData.serializer, json);
}

abstract class GWhoAmIData_whoami
    implements Built<GWhoAmIData_whoami, GWhoAmIData_whoamiBuilder> {
  GWhoAmIData_whoami._();

  factory GWhoAmIData_whoami([Function(GWhoAmIData_whoamiBuilder b) updates]) =
      _$GWhoAmIData_whoami;

  static void _initializeBuilder(GWhoAmIData_whoamiBuilder b) =>
      b..G__typename = 'ChatPracticant';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  bool get isUser;
  static Serializer<GWhoAmIData_whoami> get serializer =>
      _$gWhoAmIDataWhoamiSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GWhoAmIData_whoami.serializer, this)
          as Map<String, dynamic>);
  static GWhoAmIData_whoami? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GWhoAmIData_whoami.serializer, json);
}
