import 'package:carousel_slider/carousel_slider.dart';
import 'package:ctotek/app/changes/strings.dart';
import 'package:ctotek/app/utils/portfolio_utils.dart';
import 'package:ctotek/app/utils/services_utils.dart';
import 'package:ctotek/core/animations/entrance_fader.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ServicesWeb extends StatefulWidget {
  const ServicesWeb({super.key});

  @override
  State<ServicesWeb> createState() => _ServicesWebState();
}

class _ServicesWebState extends State<ServicesWeb> {
  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
      color: Color(0xFFF8F9FA),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(companyServices,style: TextStyle(color: Colors.red),),
          SizedBox(height: 1.h,),
          Text(companyServicesDescription1,style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w900),),
          SizedBox(height: 1.h,),
          Text(companyServicesDescription2,style: TextStyle(color: Colors.black,fontSize: 16),),
          SizedBox(height: 4.h,),
          GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(0),
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5.h,
              mainAxisExtent: 30.h,
              mainAxisSpacing: 5.h
            ),
            itemBuilder: (context,index){
              return servicesContainer(servicesUtils[index]);
            },
          )
        ],
      ),
    );
  }

  Container servicesContainer(ServicesUtils servicesUtils) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 1.w,vertical: 1.w),
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage(servicesUtils.img),
            fit: BoxFit.cover,
            opacity: 0.5,
          ),
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2,color: Colors.grey)
            ),
            child: Image.asset(
              servicesUtils.icon,
              color: Colors.white,
              height: 5.h,
              width: 5.w,
            ),
          ),
          SizedBox(height: 1.h,),
          Text(servicesUtils.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w900
          ),),
          SizedBox(height: 1.h,),
          Text(servicesUtils.description,
            style: TextStyle(
                color: Colors.white,
                fontSize: 14,
            ),),
        ],
      ),
    );
  }

}
