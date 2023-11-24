import 'package:carousel_slider/carousel_slider.dart';
import 'package:ctotek/app/changes/strings.dart';
import 'package:ctotek/app/utils/portfolio_utils.dart';
import 'package:ctotek/core/animations/entrance_fader.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PortfolioWeb extends StatefulWidget {
  const PortfolioWeb({super.key});

  @override
  State<PortfolioWeb> createState() => _PortfolioWebState();
}

class _PortfolioWebState extends State<PortfolioWeb> {
  @override
  Widget build(BuildContext context) {
    List listTitle = [
      companyAboutDescriptionTitle1,
      companyAboutDescriptionTitle2,
      companyAboutDescriptionTitle3,
    ];
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Color(0xFFF8F9FA),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.w,top: 10.h),
            child: Text(companyPortfolio,style: TextStyle(color: Colors.red),),
          ),
          SizedBox(height: 1.h,),
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Text(companyPortfolio,style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w900),),
          ),
          SizedBox(height: 4.h,),
          SizedBox(
            width: screenWidth,
            child: CarouselSlider.builder(
              itemCount: portfolioUtils.length,
              itemBuilder: (context,itemindex,pageViewIndex)=>Stack(
                children: [
                  SizedBox(
                    height: 70.h,
                    width: screenWidth,
                    child: Image.asset(portfolioUtils[itemindex].img,fit: BoxFit.cover,),
                  ),
                  Positioned(
                    left: 5.w,
                    top: 50.h,
                    child: EntranceFader(
                      offset: const Offset(0, 0),
                      delay: const Duration(seconds: 2),
                      duration: const Duration(milliseconds: 800),
                      child: Column(
                        children: [
                          Text(
                            portfolioUtils[itemindex].title1,
                            style: TextStyle(
                              shadows: [
                                Shadow(
                                  offset: Offset(2,0),
                                  blurRadius: 10,
                                  color: Colors.black87
                                )
                              ],
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                          ),
                          Text(
                            portfolioUtils[itemindex].title2,
                            style: TextStyle(
                                shadows: [
                                  Shadow(
                                      offset: Offset(2,0),
                                      blurRadius: 10,
                                      color: Colors.black87
                                  )
                                ],
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                    ))
                ],
              ),
              options: CarouselOptions(
                height: 70.h,
                aspectRatio: 2.0,
                enableInfiniteScroll: true,
                animateToClosest: false,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                enlargeFactor: 0.5,
                enlargeCenterPage: true,
                autoPlayInterval: const Duration(seconds: 6),
                // autoPlayCurve: Curves.linear,
                autoPlayAnimationDuration: const Duration(seconds: 4),
                viewportFraction: 0.5,
                scrollDirection: Axis.horizontal,
                autoPlay: true,
            )),
          ),
          SizedBox(height: 10.h,)
        ],
      ),
    );
  }

}
