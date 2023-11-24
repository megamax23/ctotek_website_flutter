import 'package:ctotek/app/changes/strings.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TestimonialWeb extends StatefulWidget {
  const TestimonialWeb({super.key});

  @override
  State<TestimonialWeb> createState() => _TestimonialWebState();
}

class _TestimonialWebState extends State<TestimonialWeb> {

  @override
  Widget build(BuildContext context) {
    PageController _pageController = PageController();
    double _currentPage = 0;
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: 60.h,
          width: screenWidth,
          padding: EdgeInsets.only(top: 10.h,left: 10.w,right: 15.w),
          color: Color(0xFFF8F9FA),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(companyTestimonial,style: TextStyle(color: Colors.red),),
              SizedBox(height: 1.h,),
              Text(companyTestimonialDescription,style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w900),),
              SizedBox(height: 2.h,),
              Container(
                padding: EdgeInsets.all(2.h),
                height: 30.h,
                color: Colors.black,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: 4,
                  itemBuilder: (context,index){
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/icons/quotes.png',
                          color: Colors.white,
                          height: 5.h,
                          width: 5.w,
                        ),
                        SizedBox(width: 0.5.w,),
                        Expanded(
                          child:
                            Column(
                              children: [
                                Text('Design Quality',style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 30
                                ),),
                                SizedBox(height: 1.h,),
                                Text(companyTestimonialDescription2,style: TextStyle(
                                    color: Colors.white60,
                                    height: 2,
                                    fontSize: 16
                                ),),
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                          ))
                      ],
                    );
                  },
                  onPageChanged: (int index){
                    setState(() {
                      _currentPage = index.toDouble();
                    });
                  },
                ),
              ),
              SizedBox(height: 1.h,),
              Center(
                child: DotsIndicator(
                  dotsCount: 4,
                  position: _currentPage,
                  decorator: DotsDecorator(
                    color: Colors.grey,activeColor: Colors.red
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          height: 30.h,
          child: Center(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(companyBgTestimonial,style: TextStyle(color: Colors.red,letterSpacing: 2),),
                      SizedBox(height: 1.h,),
                      Text(companyBgTestimonialDescription,style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w900),),
                    ],
                  ),
                ),
                const Expanded(child: SizedBox()),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 5.h,
                  width: 10.w,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.white)
                  ),
                  child: Center(child:
                    Text('GET IN TOUCH',style: TextStyle(
                      color: Colors.white,fontSize: 16
                    ),),),
                )
              ],
            ),
          ),
        ),
        Container(
          color: Color(0xFFF8F9FA),
          height: 10.h,
        )
      ],
    );
  }


}
