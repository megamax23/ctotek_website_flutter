
import 'package:ctotek/core/res/responsive.dart';
import 'package:ctotek/sections/portfolio/portfolio_web.dart';
import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(web: PortfolioWeb());
  }
}
