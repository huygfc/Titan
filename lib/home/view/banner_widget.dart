import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:titan_saga/utils/size_constants.dart';

class BannerCrousel extends StatefulWidget {
  final List<String> bannerImages;
  const BannerCrousel({Key? key, required this.bannerImages}) : super(key: key);

  @override
  State<BannerCrousel> createState() => _BannerCrouselState();
}

class _BannerCrouselState extends State<BannerCrousel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.26,
      child: Stack(
        children: [
          //crousel images
          Container(
            padding: EdgeInsets.all(SizeConstants.appPadding),
            child: CarouselSlider(
              items: widget.bannerImages
                  .map((item) => Image.asset(
                        item,
                        fit: BoxFit.cover,
                      ))
                  .toList(),
              carouselController: _controller,
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
          ),
          //crouesl dots
          Positioned.fill(
            bottom: 0,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: widget.bannerImages.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : Colors.black)
                              .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
