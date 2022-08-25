//import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failuer.dart';
import 'package:movies_app/movies/data/datasource/movie_remote_datasource.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/repository/base_movierepository.dart';
import '../../../core/error/exception.dart';

class MoviesRepository extends BaseMovieRepository {
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MoviesRepository({required this.baseMovieRemoteDataSource});

  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovie() async {
    final result = await baseMovieRemoteDataSource.getNowPlaying();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopulerMovie() async {
    final result = await baseMovieRemoteDataSource.getPopulerMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovie() async {
    final result = await baseMovieRemoteDataSource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }
}
