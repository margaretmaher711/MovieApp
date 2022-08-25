import 'package:dartz/dartz.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import '../../../core/error/failuer.dart';

abstract class BaseMovieRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovie();
  Future<Either<Failure, List<Movie>>> getPopulerMovie();
  Future<Either<Failure, List<Movie>>> getTopRatedMovie();
  
}