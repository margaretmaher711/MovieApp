import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final String backdropPath;
  final List<int> genderIds;
  final int id;
  final String title;
  final double voteAverage;
  final String overview;
  final String releaseDate;

  const Movie( 
      {required this.id,
      required this.title,
      required this.backdropPath,
      required this.overview,
      required this.voteAverage,
      required this.releaseDate,
      required List<int>this.genderIds});

  List<Object> get props =>
      [id, title, backdropPath, overview, voteAverage, genderIds, releaseDate];
}
