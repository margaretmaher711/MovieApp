import 'package:equatable/equatable.dart';
import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';

class MoviesState extends Equatable {
  final List<Movie> nowPlayingMovie;
  final RequestState nowPlayingState;
  final String message;
  MoviesState(
      {this.nowPlayingMovie = const [],
      this.nowPlayingState = RequestState.loading,
      this.message = ''});
  @override
  List<Object?> get props => [nowPlayingMovie, nowPlayingState, message];
}
