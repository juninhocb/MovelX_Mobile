import 'package:get/get.dart';
import 'package:mobile_movelx/views/guest/pages/guest_home_page.dart';
import 'package:mobile_movelx/views/login/login_page.dart';
import 'package:mobile_movelx/views/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splashScreen = "/splash-page";
  static const String loginPage = "/login-page";
  static const String guestHomePage = "/guest-home-page";

  static String getSplashScreen () => "$splashScreen";
  static String getLoginPage () => "$loginPage";
  static String getGuestHomePage () => "$guestHomePage";


  static Map<String, WidgetBuilder> getRoutes() {
    return {
      splashScreen: (context) => const SplashPage(),
      loginPage: (context) => const LoginPage(),
      guestHomePage: (context) => const GuestHomePage(),
    };
  }



}