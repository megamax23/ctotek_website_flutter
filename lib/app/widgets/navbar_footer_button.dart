import 'package:ctotek/core/animations/entrance_fader.dart';
import 'package:ctotek/core/color/colors.dart';
import 'package:ctotek/core/providers/scroll_provider.dart';
import 'package:ctotek/core/res/responsive.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class NavBarFooterButton extends StatefulWidget {
  final String label;
  final int index;
  const NavBarFooterButton({
    Key? key,
    required this.label,
    required this.index,
  }) : super(key: key);

  @override
  State<NavBarFooterButton> createState() => _NavBarFooterButtonState();
}

class _NavBarFooterButtonState extends State<NavBarFooterButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return EntranceFader(
      offset: const Offset(0, -10),
      delay: const Duration(milliseconds: 1000),
      duration: const Duration(milliseconds: 250),
      child: InkWell(
        onHover: (value) {
          setState(() => isHover = value);
        },
        onTap: () {
          scrollProvider.jumpTo(widget.index);
        },
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: !Responsive.isDesktop(context) ? 10 : 20,
              vertical: 10),
          child: Text(
            widget.label,
            style: TextStyle(
                color: isHover ? Colors.red : Colors.white,
                fontFamily: 'josefinsans',
                fontWeight: FontWeight.w300,
                fontSize: !Responsive.isDesktop(context) ? 14 : 20),
          ),
        ),
      ),
    );
  }
}
