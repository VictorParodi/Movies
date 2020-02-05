import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CardSwiper extends StatelessWidget {
  final List<dynamic> movies;

  CardSwiper({@required this.movies});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return (Container(
      padding: EdgeInsets.only(top: 10.0),
      width: double.infinity,
      height: _screenSize.height * 0.5,
      child: Swiper(
        layout: SwiperLayout.STACK,
        itemCount: 5,
        itemWidth: _screenSize.width * 0.8,
        itemBuilder: (context, index) {
          return (Image(
            image: NetworkImage("http://via.placeholder.com/350x150"),
            fit: BoxFit.fill,
          ));
        },
      ),
    ));
  }
}
