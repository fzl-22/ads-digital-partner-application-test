import 'package:ads_digital_partner_application_test/config/navigation/bindings/controllers/category.controller.binding.dart';
import 'package:ads_digital_partner_application_test/features/category/presentation/pages/category.screen.dart';
import 'package:ads_digital_partner_application_test/features/profile/presentation/pages/profile.screen.dart';
import 'package:ads_digital_partner_application_test/features/register/presentation/pages/register.screen.dart';
import 'package:ads_digital_partner_application_test/features/register/presentation/pages/verification.screen.dart';
import 'package:ads_digital_partner_application_test/features/walkthrough/presentation/pages/walkthrough.screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../env/config.dart';
import '../../features/screens.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'routes.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;
  const EnvironmentsBadge({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashScreen(),
      binding: SplashControllerBinding(),
    ),
    GetPage(
      name: Routes.WALKTHROUGH,
      page: () => const WalkthroughScreen(),
      binding: OnboardingControllerBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: Routes.WELCOME,
      page: () => const WelcomeScreen(),
      binding: WelcomeControllerBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginScreen(),
      binding: LoginControllerBinding(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => const RegisterScreen(),
      binding: RegisterControllerBinding(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: Routes.VERIFICATION,
      page: () => const VerificationScreen(),
      binding: VerificationControllerBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: Routes.ROOT,
      page: () => const RootScreen(),
      binding: RootControllerBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.NOTIFICATION,
      page: () => const NotificationScreen(),
      binding: NotificationControllerBinding(),
    ),
    GetPage(
      name: Routes.ADD,
      page: () => const AddScreen(),
      binding: AddControllerBinding(),

    ),
    GetPage(
      name: Routes.CART,
      page: () => const CartScreen(),
      binding: CartControllerBinding(),
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => const ProfileScreen(),
      binding: ProfileControllerBinding(),
    ),
    GetPage(
      name: Routes.CATEGORY,
      page: () => const CategoryScreen(),
      binding: CategoryControllerBinding(),
      transition: Transition.rightToLeft,
    ),
  ];
}
