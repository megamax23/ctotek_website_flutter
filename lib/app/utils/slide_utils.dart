import 'package:flutter/material.dart';

class SlideUtils {
  final String img, titel1, titel2;

  SlideUtils({
    required this.img,
    required this.titel1,
    required this.titel2,
  });
}

List<SlideUtils> slideUtils = [
  SlideUtils(
      img: 'assets/images/image1.jpg',
      titel1: 'Promot',
      titel2: 'Your Business'),
  SlideUtils(
      img: 'assets/images/image2.jpg', titel1: 'Modern', titel2: 'design'),
  SlideUtils(
      img: 'assets/images/image3.jpg', titel1: 'Creative', titel2: 'Solutions'),
];
