// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'movie_details.g.dart';

@JsonSerializable()
class MovieDetails {
  int? id;
  int? runtime;
  int? voteCount;
  String? status;
  String? originalLang;

  MovieDetails({
    this.id,
    this.runtime,
    this.voteCount,
    this.status,
    this.originalLang,
  });

  factory MovieDetails.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$MovieDetailsToJson(this);
}
