import 'package:flutter/material.dart';
import 'package:mobile_movelx/helpers/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:mobile_movelx/views/guest/pages/guest_home_page.dart';
import 'package:mobile_movelx/views/login/login_page.dart';
import 'package:mobile_movelx/views/splash/splash_screen.dart';

import 'helpers/constants/app_colors.dart';
/*
void main() {

  runApp(GetMaterialApp(
    title: 'MovelX',
    theme: ThemeData(
      primaryColor: AppColors.mainColor,
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.brown).copyWith(secondary: AppColors.textColor)
    ),
    initialRoute: AppRoutes.getSplashScreen(),
    getPages: AppRoutes.routes,
    debugShowCheckedModeBanner: false,
  ));
}
 */

void main() {
  runApp(MaterialApp(
    title: 'MovelX',
    theme: ThemeData(
        primaryColor: AppColors.mainColor,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.brown)
            .copyWith(secondary: AppColors.textColor)),
    initialRoute: AppRoutes.getSplashScreen(),
    routes: AppRoutes.getRoutes(),
    debugShowCheckedModeBanner: false,
  ));
}



