import 'package:dartz/dartz.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/repository/base_movierepository.dart';
import '../../../core/error/failuer.dart';

class GetNowPlayingMovieUseCase {
  final BaseMovieRepository baseMovieReposit;

  GetNowPlayingMovieUseCase(this.baseMovieReposit);
  Future<Either<Failure, List<Movie>>> execute() async {
    return await baseMovieReposit.getNowPlayingMovie();
  }
}
