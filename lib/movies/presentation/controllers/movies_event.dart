import 'package:equatable/equatable.dart';

abstract class MoviesEvent extends Equatable {
  const MoviesEvent();
  List<Object> get props => [];
}

class GetNowPlayingMoviesEvent extends MoviesEvent {}

class GetPopulerMoviesEvent extends MoviesEvent {}

class GetTopRatedMoviesEvent extends MoviesEvent {}
