// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      id: json['id'] as int?,
      movieId: json['movieId'] as int?,
      voteAverage: (json['voteAverage'] as num?)?.toDouble(),
      title: json['title'] as String?,
      posterUrl: json['posterUrl'] as String?,
      image: json['image'] as Uint8List?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      releaseDate: json['releaseDate'] as String?,
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'id': instance.id,
      'movieId': instance.movieId,
      'voteAverage': instance.voteAverage,
      'title': instance.title,
      'posterUrl': instance.posterUrl,
      'genres': instance.genres,
      'image': instance.image,
      'releaseDate': instance.releaseDate,
    };
