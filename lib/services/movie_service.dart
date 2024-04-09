import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nonton_id/model/movie_model.dart';

class MovieService {
  static const String _baseUrl = 'https://movies-api14.p.rapidapi.com';
  static const Map<String, String> _headers = {
    'X-RapidAPI-Key': '75f39f7634mshdde1743131f533ap1f1c79jsnf9f13308d2c4',
    'X-RapidAPI-Host': 'movies-api14.p.rapidapi.com'
  };

  static Future<List<MovieModel>> getMovies() async {
    final Uri uri = Uri.parse('$_baseUrl/movies');
    final response = await http.get(uri, headers: _headers);

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = jsonDecode(response.body);

      if (jsonData.containsKey('movies')) {
        final List<dynamic> movieList = jsonData['movies'];

        List<MovieModel> movies =
            movieList.map((json) => MovieModel.fromJson(json)).toList();

        return movies;
      } else {
        throw Exception('Invalid response format: movies key not found');
      }
    } else {
      throw Exception('Failed to load movies');
    }
  }
}
