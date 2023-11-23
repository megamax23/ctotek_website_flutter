import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ctotek/app/utils/slide_utils.dart';
import 'package:ctotek/app/widgets/animation_text.dart';
import 'package:ctotek/core/animations/entrance_fader.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SlideImages extends StatefulWidget {
  const SlideImages({super.key});

  @override
  State<SlideImages> createState() => _SlideImagesState();
}

class _SlideImagesState extends State<SlideImages> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
        height: 100.h,
        width: screenWidth,
        child: CarouselSlider.builder(
          itemCount: slideUtils.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) => Stack(
            children: [
              SizedBox(
                height: 100.h,
                width: screenWidth,
                child: Image.asset(
                  slideUtils[itemIndex].img,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 15.w,
                top: 40.h,
                child: EntranceFader(
                    offset: const Offset(0, 0),
                    delay: const Duration(seconds: 2),
                    duration: const Duration(milliseconds: 800),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(slideUtils[itemIndex].titel1,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 70)),
                        Text(slideUtils[itemIndex].titel2,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 70))
                      ],
                    )),
              ),
            ],
          ),
          options: CarouselOptions(
            height: 100.h,
            aspectRatio: 2.0,
            enableInfiniteScroll: true,
            animateToClosest: false,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            // enlargeFactor: 0.1,
            // enlargeCenterPage: true,
            autoPlayInterval: const Duration(seconds: 8),
            // autoPlayCurve: Curves.linear,
            autoPlayAnimationDuration: const Duration(seconds: 4),
            viewportFraction: 1,
            scrollDirection: Axis.horizontal,
            autoPlay: true,
          ),
        ));
  }
}
