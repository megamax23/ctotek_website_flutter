
import 'package:ctotek/core/res/responsive.dart';
import 'package:ctotek/sections/services/services_web.dart';
import 'package:ctotek/sections/testimonial/testimonial_web.dart';
import 'package:flutter/material.dart';

class Testimonial extends StatelessWidget {
  const Testimonial({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(web: TestimonialWeb());
  }
}
