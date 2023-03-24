import 'package:get/get.dart';
import 'package:mobile_movelx/views/login/login_page.dart';
import 'package:mobile_movelx/views/splash/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = "/splash-page";
  static const String loginPage = "/login-page";

  static String getSplashScreen () => "$splashScreen";
  static String getLoginPage () => "$loginPage";


  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => const SplashPage()),
    GetPage(name: loginPage, page: () => const LoginPage())
  ];


}