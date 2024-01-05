import 'package:ads_digital_partner_application_test/config/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'config/navigation/navigation.dart';
import 'config/navigation/routes.dart';

void main() async {
  var initialRoute = await Routes.initialRoute;
  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;
  const Main(this.initialRoute, {super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: AppTheme.theme,
      initialRoute: initialRoute,
      getPages: Nav.routes,
    );
  }
}
