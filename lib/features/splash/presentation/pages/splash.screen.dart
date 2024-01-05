import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash.controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            bottom: 0,
            child: Image.asset(
              "assets/images/splash/background.png",
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Image.asset(
              "assets/images/splash/logo.png",
              height: 124,
            ),
          ),
        ],
      ),
    );
  }
}
