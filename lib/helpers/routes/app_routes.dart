import 'package:mobile_movelx/views/enterprise/enterprise_home_page.dart';
import 'package:mobile_movelx/views/guest/pages/guest_home_page.dart';
import 'package:mobile_movelx/views/login/login_page.dart';
import 'package:mobile_movelx/views/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import '../../views/guest/menu_screen.dart';
import '../../views/guest/pages/home_children/project_from_home_page.dart';

class AppRoutes {
  static const String splashScreen = "/splash-page";
  static const String loginPage = "/login-page";
  static const String guestHomePage = "/guest-home-page";
  static const String selectPage = "/select-page";
  static const String guestProjectFromHomePage = "/guest-project-page";

  //enterprise pages
  static const String enterpriseHomePage = "/enterprise-home-page";


  static String getSplashScreen () => "$splashScreen";
  static String getLoginPage () => "$loginPage";
  static String getGuestHomePage () => "$guestHomePage";
  static String getMenuScreen () => "$selectPage";
  static String getGuestProjectFromHomePage () => "$guestProjectFromHomePage";
  static String getEnterpriseHomePage () => "$enterpriseHomePage";

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      splashScreen: (context) => const SplashPage(),
      loginPage: (context) => const LoginPage(),
      guestHomePage: (context) => const GuestHomePage(),
      selectPage: (context) => const MenuScreen(),
      guestProjectFromHomePage: (context) => const ProjectFromHomePage(),
      enterpriseHomePage: (context) => const EnterpriseHomePage()
    };
  }



}