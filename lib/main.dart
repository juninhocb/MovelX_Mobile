import 'package:flutter/material.dart';
import 'package:mobile_movelx/helpers/routes/app_routes.dart';
import 'package:get/get.dart';

void main() {

  runApp(GetMaterialApp(
    title: 'MovelX',
    theme: ThemeData(
      primarySwatch: Colors.brown,
    ),
    initialRoute: AppRoutes.getLoginPage(),
    getPages: AppRoutes.routes,
    debugShowCheckedModeBanner: false,
  ));
}



