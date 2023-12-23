// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_board.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoardImpl _$$BoardImplFromJson(Map<String, dynamic> json) => _$BoardImpl(
      userId: json['userId'] as int? ?? 0,
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? "",
      body: json['body'] as String? ?? "",
    );

Map<String, dynamic> _$$BoardImplToJson(_$BoardImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };

_$BoardListImpl _$$BoardListImplFromJson(Map<String, dynamic> json) =>
    _$BoardListImpl(
      boardList: (json['boardList'] as List<dynamic>?)
              ?.map((e) => Board.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$BoardListImplToJson(_$BoardListImpl instance) =>
    <String, dynamic>{
      'boardList': instance.boardList,
    };
