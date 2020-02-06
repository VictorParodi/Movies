import 'package:flutter/material.dart';
import 'package:movies/src/providers/movies_provider.dart';
import 'package:movies/src/widgets/card_swiper.dart';

class HomePage extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Home Page'),
				actions: <Widget>[
					IconButton(icon: Icon(Icons.search), onPressed: () {})
				],
			),
			body: _createCardSwiper(),
		);
	}

	Widget _createCardSwiper() {
		final moviesProvider = new MoviesProvider();
		print(moviesProvider.getOnNow());
		return CardSwiper(movies: [1, 2, 3, 4, 5]);
	}
}
