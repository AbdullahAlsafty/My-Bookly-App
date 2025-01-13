import 'package:flutter/material.dart';
import 'package:get/get.dart';

const Color kprimaryColor = Color(0XFF100B20);
const Transition kTransition = Transition.cupertinoDialog;
const Duration kDuration = Duration(seconds: 2);

abstract class StylsFil {
  static TextStyle titleLarge =
      TextStyle(fontSize: 24, fontWeight: FontWeight.w600);
}

abstract class AssetData {
  static String logo = 'assets/images/Logo.png';
  static String testImage = 'assets/images/test_image.png';
}
