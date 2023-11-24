
import 'package:ctotek/core/res/responsive.dart';
import 'package:ctotek/sections/about_us/about_us_web.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(web: AboutUsWeb());
  }
}
