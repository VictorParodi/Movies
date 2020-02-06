import 'package:flutter/material.dart';
import 'package:movies/src/pages/home_page.dart';

Map getRoutes() {
	return (
		<String, WidgetBuilder> {
			'/': (context) => HomePage(), 
		}
	);
}