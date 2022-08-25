import 'package:get_it/get_it.dart';
import 'package:movies_app/movies/data/datasource/movie_remote_datasource.dart';
import 'package:movies_app/movies/data/repository/movies_repository.dart';
import 'package:movies_app/movies/domain/repository/base_movierepository.dart';
import 'package:movies_app/movies/domain/usercase/getnowplaying_usecase.dart';
import 'package:movies_app/movies/presentation/controllers/movies_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    ///Bloc
    sl.registerLazySingleton(() => MoviesBloc(sl()));

    ///Use Case
    sl.registerLazySingleton(() => GetNowPlayingMovieUseCase(sl()));

    ///Repository
    sl.registerLazySingleton<BaseMovieRepository>(
        () => MoviesRepository(baseMovieRemoteDataSource: sl()));

    ///Data Source
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
  }
}
