import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/movies/domain/usercase/getnowplaying_usecase.dart';
import 'package:movies_app/movies/presentation/controllers/movies_event.dart';
import 'package:movies_app/movies/presentation/controllers/movies_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMovieUseCase getNowPlayingMovieUseCase;

  MoviesBloc(this.getNowPlayingMovieUseCase) : super(MoviesState()) {
   
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      
      final result = await getNowPlayingMovieUseCase.execute();
     
      emit(MoviesState(nowPlayingState: RequestState.loaded));
     
      result.fold(
          (l) => emit(MoviesState(
              nowPlayingState: RequestState.error, 
              message: l.message)),
          (r) => emit(MoviesState(
              nowPlayingState: RequestState.loaded, 
              nowPlayingMovie: r)));
    });
  }
}
