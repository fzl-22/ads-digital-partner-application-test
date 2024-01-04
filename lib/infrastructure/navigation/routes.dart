// ignore_for_file: constant_identifier_names

class Routes {
  static Future<String> get initialRoute async {
    return SPLASH;
  }

  static const HOME = '/home';
  static const LOGIN = '/login';
  static const SPLASH = '/splash';
  static const WALKTHROUGH = '/walkthrough';
  static const WELCOME = '/welcome';
  static const REGISTER = '/register';
}
