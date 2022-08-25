import 'package:dartz/dartz.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/repository/base_movierepository.dart';
import '../../../core/error/failuer.dart';

class GetPopulerMovieUseCase {
  final BaseMovieRepository baseMovieReposit;

  GetPopulerMovieUseCase(this.baseMovieReposit);
  Future<Either<Failure, List<Movie>>> excute() async {
    return await baseMovieReposit.getPopulerMovie();
  }
}
