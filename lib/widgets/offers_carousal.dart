import 'dart:async';

import 'package:flutter/material.dart';

int checkIndex = 0;

class OffersCarousel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OffersCarouselState();
}

class _OffersCarouselState extends State<OffersCarousel> {
  final PageController _controller = PageController(viewportFraction: 0.95);
  Duration seconds = const Duration(seconds: 3);

  void _nextImage() {
    if (mounted) {
      setState(
            () {
          photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : 0;
          _controller.nextPage(
              duration: const Duration(milliseconds: 1000),
              curve: Curves.fastOutSlowIn);
        },
      );
    }
  }

  late Timer time;

  @override
  void initState() {
    super.initState();
    const Duration sec = Duration(seconds: 4);
    time = Timer.periodic(sec, (Timer t) => _nextImage());
  }

  int photoIndex = 0;

// ignore: avoid_unused_constructor_parameter
  List<Widget> photos = <Widget>[
    Image.network(
      'https://static.vecteezy.com/system/resources/thumbnails/002/043/612/small/special-offer-banner-sale-promotion-web-market-poster-file-vector.jpg',
      fit: BoxFit.fill,
    ),
    Image.network(
      'https://assets.designhill.com/design-blog/wp-content/uploads/2021/10/Poster-Template-Designs.jpg',
      fit: BoxFit.fill,
    ),
    Image.network(
      'https://www.shutterstock.com/shutterstock/photos/2313667035/display_1500/stock-vector-monsoon-sale-poster-monsoon-sale-banner-discount-offers-monsoon-season-background-rainy-day-2313667035.jpg',
      fit: BoxFit.fill,
    ),
    Image.network(
      'https://cdn.dribbble.com/users/5895311/screenshots/15961373/media/a8c4ab9f3a761e65f2ccd948de8bdd54.jpg?resize=400x300&vertical=center',
      fit: BoxFit.fill,
    ),
    Image.network(
      'https://www.shutterstock.com/shutterstock/photos/2305101099/display_1500/stock-vector-monsoon-sale-poster-monsoon-sale-banner-discount-offers-monsoon-season-background-rainy-day-2305101099.jpg',
      fit: BoxFit.fill,
    ),
    Image.network(
      'https://cdn.vectorstock.com/i/preview-1x/30/60/mega-sale-best-choice-special-offer-poster-vector-43723060.jpg',
      fit: BoxFit.fill,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Stack(
            children: <Widget>[
              SizedBox(
                height: 220.0,
                child: PageView.builder(
                  controller: _controller,
                  onPageChanged: (int index) {
                    if (checkIndex % 5 != photoIndex) {
                      setState(() {
                        print('true');
                        time.cancel();
                      });
                    } else
                      print('false');
                  },
                  itemBuilder: (BuildContext context, int itemIndex) {
                    checkIndex = itemIndex;
                    return Card(
                      elevation: 3.0,
                      child: photos[itemIndex % 5],
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
