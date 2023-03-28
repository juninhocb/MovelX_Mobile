import 'package:flutter/material.dart';
import 'package:mobile_movelx/helpers/routes/app_routes.dart';

import 'helpers/constants/app_colors.dart';

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



