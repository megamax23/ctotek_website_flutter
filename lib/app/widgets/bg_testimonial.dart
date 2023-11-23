import 'package:ctotek/app/changes/strings.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BgTestimonial extends StatefulWidget {
  const BgTestimonial({super.key});

  @override
  State<BgTestimonial> createState() => _BgTestimonialState();
}

class _BgTestimonialState extends State<BgTestimonial> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage('assets/images/img_ser1.jpg'),
          opacity: 0.5,
          fit: BoxFit.cover,
        ),
      ), // You can set any color you
    );
  }
}
