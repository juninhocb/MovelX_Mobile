import 'package:flutter/material.dart';
import 'package:mobile_movelx/helpers/routes/app_routes.dart';
import 'package:get/get.dart';

import 'helpers/constants/app_colors.dart';

void main() {

  runApp(GetMaterialApp(
    title: 'MovelX',
    theme: ThemeData(
      primaryColor: AppColors.mainColor,
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.brown).copyWith(secondary: AppColors.textColor)

    ),
    initialRoute: AppRoutes.getLoginPage(),
    getPages: AppRoutes.routes,
    debugShowCheckedModeBanner: false,
  ));
}



