//import 'dart:convert';
import 'package:movies_app/movies/domain/entities/movie.dart';

class MovieModel extends Movie {
  MovieModel(
      {required super.id,
      required super.title,
      required super.backdropPath,
      required super.overview,
      required super.voteAverage,
      required super.genderIds,
      required super.releaseDate});

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
      id: json["id"],
      title: json["title"],
      backdropPath: json["backdrop_path"],
      overview: json["overview"],

      /// TODO : CHECK THIS
      voteAverage: json["vote_average"].toDouble(),
      genderIds: List<int>.from(json["genre_ids"].map((e) => e)),
      releaseDate: json["release_date"]);
}
