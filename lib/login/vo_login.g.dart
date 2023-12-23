// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginImpl _$$LoginImplFromJson(Map<String, dynamic> json) => _$LoginImpl(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? "",
      username: json['username'] as String? ?? "",
      email: json['email'] as String? ?? "",
    );

Map<String, dynamic> _$$LoginImplToJson(_$LoginImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
    };

_$LoginListImpl _$$LoginListImplFromJson(Map<String, dynamic> json) =>
    _$LoginListImpl(
      loginList: (json['loginList'] as List<dynamic>?)
              ?.map((e) => Login.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$LoginListImplToJson(_$LoginListImpl instance) =>
    <String, dynamic>{
      'loginList': instance.loginList,
    };
