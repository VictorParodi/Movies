import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movies/src/models/movies_model.dart';

class MoviesProvider {
	String _apiKey = '6695ee093cc2dfd3dfc415e275f68e1e';
	String _url = 'api.themoviedb.org';
	String _language = 'es-ES';

	Future<List<Movie>> getOnNow() async {
		final url = Uri.http(_url, '3/movie/now_playing', {
			'api_key': _apiKey,
			'language': _language
		});

		final response = await http.get(url);
		final parsedJson = json.decode(response.body);
		final moviesList = Movies.fromJsonList(parsedJson['results']);
		return moviesList.movies;
	}
}