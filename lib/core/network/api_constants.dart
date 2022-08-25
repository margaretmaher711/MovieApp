class ApiConstant {
  static String baseUrl = "https://api.themoviedb.org/3";
  static String apiKey = "71589c9ab900c662beee754415dafc94";
  static String NowPlayingMoviePath =
      "$baseUrl/movie/now_playing?api_key=$apiKey";

  static String PopulerMoviePath = "$baseUrl/movie/popular?api_key=$apiKey";

  static String TopRatedMoviePath = "$baseUrl/movie/top_rated?api_key=$apiKey";
  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';

  static String imageUrl(String path) => '$baseImageUrl$path';
}
