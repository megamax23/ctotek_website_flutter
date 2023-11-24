
import 'package:ctotek/core/res/responsive.dart';
import 'package:ctotek/sections/home/home_web.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      web: HomeWeb(),
    );
  }
}
