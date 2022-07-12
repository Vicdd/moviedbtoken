// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetails _$MovieDetailsFromJson(Map<String, dynamic> json) => MovieDetails(
      id: json['id'] as int?,
      runtime: json['runtime'] as int?,
      voteCount: json['voteCount'] as int?,
      status: json['status'] as String?,
      originalLang: json['originalLang'] as String?,
    );

Map<String, dynamic> _$MovieDetailsToJson(MovieDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtime': instance.runtime,
      'voteCount': instance.voteCount,
      'status': instance.status,
      'originalLang': instance.originalLang,
    };
