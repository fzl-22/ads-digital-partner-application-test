import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add.controller.dart';

class AddScreen extends GetView<AddController> {
  const AddScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AddScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
