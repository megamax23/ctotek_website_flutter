import 'dart:developer';

import 'package:ctotek/core/providers/scroll_provider.dart';
import 'package:ctotek/sections/about_us/about_us.dart';
import 'package:ctotek/sections/footer/footer.dart';
import 'package:ctotek/sections/home/home.dart';
import 'package:ctotek/sections/portfolio/portfolio.dart';
import 'package:ctotek/sections/services/services.dart';
import 'package:ctotek/sections/testimonial/testimonial.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BodyUtils {
  static List<Widget> views(ScrollProvider scrollProvider) {
    return [
      Home(),
      AboutUs(),
      Portfolio(),
      Services(),
      Testimonial(),
      Footer(),
    ];
  }
}
