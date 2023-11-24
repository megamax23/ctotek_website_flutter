
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeWeb extends StatefulWidget {
  const HomeWeb({super.key});

  @override
  State<HomeWeb> createState() => _HomeWebState();
}

class _HomeWebState extends State<HomeWeb> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenWidth > 1600 ? 120.h : 100.h ,
      color: Colors.transparent,
    );
  }
}
