import 'package:avatar_glow/avatar_glow.dart';
import 'package:ctotek/core/animations/entrance_fader.dart';
import 'package:ctotek/core/color/colors.dart';
import 'package:ctotek/core/providers/scroll_provider.dart';
import 'package:ctotek/core/res/responsive.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class ArrowOnTop extends StatefulWidget {
  const ArrowOnTop({Key? key}) : super(key: key);

  @override
  ArrowOnTopState createState() => ArrowOnTopState();
}

class ArrowOnTopState extends State<ArrowOnTop> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return Positioned(
      bottom: 100,
      right: 20,
      child: EntranceFader(
        offset: const Offset(0, 20),
        child: InkWell(
          borderRadius: BorderRadius.circular(8.0),
          onTap: () => scrollProvider.jumpTo(0),
          onHover: (isHovering) {
            if (isHovering) {
              setState(() => isHover = true);
            } else {
              setState(() => isHover = false);
            }
          },
          child: AvatarGlow(
            glowColor: Colors.red,
            endRadius: Responsive.isDesktop(context) ? 80 : 40,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: CircleBorder(),
              child: CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(
                  Icons.arrow_upward,
                  color: Colors.white,
                  size: Responsive.isDesktop(context) ? 30 : 20,
                ),
                radius: Responsive.isDesktop(context) ? 40 : 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
