import 'package:ctotek/core/res/responsive.dart';
import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // theme

    return SizedBox(
      width: Responsive.isDesktop(context) ? 300 : 150,
      child: Image.asset('assets/imgs/aedbel_logo.png'),
    );
  }
}
