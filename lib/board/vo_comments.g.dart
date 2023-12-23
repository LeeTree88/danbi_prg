// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_comments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentsImpl _$$CommentsImplFromJson(Map<String, dynamic> json) =>
    _$CommentsImpl(
      postId: json['postId'] as int? ?? 0,
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? "",
      email: json['email'] as String? ?? "",
      body: json['body'] as String? ?? "",
    );

Map<String, dynamic> _$$CommentsImplToJson(_$CommentsImpl instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'body': instance.body,
    };

_$CommentsListImpl _$$CommentsListImplFromJson(Map<String, dynamic> json) =>
    _$CommentsListImpl(
      commentsList: (json['commentsList'] as List<dynamic>?)
              ?.map((e) => Comments.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      commentsCount: (json['commentsCount'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CommentsListImplToJson(_$CommentsListImpl instance) =>
    <String, dynamic>{
      'commentsList': instance.commentsList,
      'commentsCount': instance.commentsCount,
    };
