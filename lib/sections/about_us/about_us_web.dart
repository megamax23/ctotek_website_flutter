import 'package:ctotek/app/changes/strings.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AboutUsWeb extends StatefulWidget {
  const AboutUsWeb({super.key});

  @override
  State<AboutUsWeb> createState() => _AboutUsWebState();
}

class _AboutUsWebState extends State<AboutUsWeb> {
  @override
  Widget build(BuildContext context) {
    List listTitle = [
      companyAboutDescriptionTitle1,
      companyAboutDescriptionTitle2,
      companyAboutDescriptionTitle3,
    ];
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: SizedBox(
              width: 35.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(companyAbout,style: TextStyle(color: Colors.red),),
                  SizedBox(height: 1.h,),
                  Padding(
                    padding: EdgeInsets.only(right: 20.w),
                    child: Text(companyAboutDescription1,style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w900),),
                  ),
                  SizedBox(height: 4.h,),
                  Text(companyAboutDescription2,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                  SizedBox(height: 2.h,),
                  Text(companyAboutDescription3,style: TextStyle(color: Colors.black,fontSize: 16),),
                  SizedBox(height: 3.h,),
                  ...List.generate(listTitle.length, (index) => rows(listTitle[index])),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 70.h,
            width: 35.w,
            child: Stack(
              children: [
                Positioned(
                  top: 20.h,
                  left: 0,
                  child: Container(
                  padding: EdgeInsets.all(5),
                  height: 40.h,
                  width: 20.w,
                  color: Colors.white,
                  child: Image.asset('assets/images/image1.jpg',fit: BoxFit.cover,),
                )),
                Positioned(
                    top: 10.h,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      height: 40.h,
                      width: 20.w,
                      color: Colors.white,
                      child: Image.asset('assets/images/image2.jpg',fit: BoxFit.cover,),
                    )),
              ],
            ),
          )
      ],),
    );
  }
  rows(String title){
    return Padding(
      padding: EdgeInsets.only(bottom: 3.h),
      child: Row(children: [
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2,color: Colors.black45)
          ),
        ),
        SizedBox(height: 1.h,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: TextStyle(color: Colors.black,fontSize: 16)),
            ]
          ,)
        )
      ],),
    );
  }
}
