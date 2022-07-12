import 'dart:typed_data';
import 'movie_details.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@JsonSerializable()
class Movie {
  int? id;
  int? movieId;
  double? voteAverage;
  String? title;
  String? posterUrl;
  Uint8List? image;
  List<String>? genres;
  String? releaseDate;
  MovieDetails? details;

  Movie({
    this.id,
    this.movieId,
    this.voteAverage,
    this.title,
    this.posterUrl,
    this.genres,
    this.releaseDate,
    this.image,
    this.details,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$MovieToJson(this);
}
