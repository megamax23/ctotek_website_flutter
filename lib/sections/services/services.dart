
import 'package:ctotek/core/res/responsive.dart';
import 'package:ctotek/sections/services/services_web.dart';
import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(web: ServicesWeb());
  }
}
