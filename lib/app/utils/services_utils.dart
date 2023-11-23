import 'package:flutter/material.dart';

class ServicesUtils {
  final String icon, title, description, img;

  ServicesUtils(
      {required this.icon,
      required this.title,
      required this.description,
      required this.img});
}

List<ServicesUtils> servicesUtils = [
  ServicesUtils(
      icon: 'assets/icons/pen.png',
      title: 'Clean Design',
      description:
          'Add, delete and move elements around on the front end of your website. No coding and no confusing back end options.',
      img: 'assets/images/img_ser1.jpg'),
  ServicesUtils(
      icon: 'assets/icons/code.png',
      title: 'Development',
      description:
          'Add, delete and move elements around on the front end of your website. No coding and no confusing back end options.',
      img: 'assets/images/img_ser2.jpg'),
  ServicesUtils(
      icon: 'assets/icons/database.png',
      title: 'Hosting',
      description:
          'Add, delete and move elements around on the front end of your website. No coding and no confusing back end options.',
      img: 'assets/images/img_ser3.jpg'),
  ServicesUtils(
      icon: 'assets/icons/chating.png',
      title: 'Chatting Service',
      description:
          'Add, delete and move elements around on the front end of your website. No coding and no confusing back end options.',
      img: 'assets/images/img_ser4.jpg'),
  ServicesUtils(
      icon: 'assets/icons/analysis.png',
      title: 'Analysis',
      description:
          'Add, delete and move elements around on the front end of your website. No coding and no confusing back end options.',
      img: 'assets/images/img_ser5.jpg'),
  ServicesUtils(
      icon: 'assets/icons/lifebuoy.png',
      title: 'Support',
      description:
          'Add, delete and move elements around on the front end of your website. No coding and no confusing back end options.',
      img: 'assets/images/img_ser6.jpg'),
];
