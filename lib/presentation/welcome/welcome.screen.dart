import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/welcome.controller.dart';

class WelcomeScreen extends GetView<WelcomeController> {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WelcomeScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'WelcomeScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
