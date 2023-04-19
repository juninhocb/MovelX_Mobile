import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:mobile_movelx/helpers/constants/app_colors.dart';
import 'package:mobile_movelx/helpers/constants/app_constants.dart';
import 'package:mobile_movelx/helpers/dimensions/dimensions.dart';
import 'package:mobile_movelx/helpers/routes/app_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin{

  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState(){
    super.initState();
    //TODO load resources in near future
    controller = AnimationController(vsync: this, duration: AppConstants.twoSeconds)..forward();
    animation = CurvedAnimation(parent: controller, curve: Curves.linear);
    Timer.periodic(AppConstants.threeSeconds  , (timer) {
      //TODO verify is user is logged in
      Navigator.pushReplacementNamed(context, AppRoutes.getLoginPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    Dimensions.screenHeight = MediaQuery.of(context).size.height;
    Dimensions.screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: AppColors.mainColor,
      child: Center(
        child: ScaleTransition(
            scale: animation,
            child: Image.asset(AppConstants.logoPath)),
      ),
    );
  }
}

