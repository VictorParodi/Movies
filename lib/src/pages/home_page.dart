import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {}
          )
        ],
      ),
      body: _createCardSwiper(),

    );
  }

  Widget _createCardSwiper() {
    return (
      Container(
        padding: EdgeInsets.only(top: 10.0),
        height: 300.0,
        width: double.infinity,
        child: Swiper(
          layout: SwiperLayout.STACK,
          itemCount: 5,
          itemWidth: 300.0,
          itemBuilder: (context, index) {
            return (
              Image(
                image: NetworkImage("http://via.placeholder.com/350x150"),
                fit: BoxFit.fill,
              )
            );
          },
        ),
      )
    );
  }
}