
import 'package:ctotek/core/res/responsive.dart';
import 'package:ctotek/sections/footer/footer_web.dart';
import 'package:ctotek/sections/home/home_web.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      web: FooterWeb(),
    );
  }
}
