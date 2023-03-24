import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_movelx/helpers/constants/app_colors.dart';
import 'package:mobile_movelx/helpers/constants/app_constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),

    );
  }

  Widget _buildBody(){
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.mainColor, AppColors.secondaryColor, AppColors.detailColor])
      ),
      child: Column(
        children: [
          _buildFirstPart(),
          _buildSecondPart(),
          _buildThirdPart()
        ],
      ),
    );
  }

  Widget _buildFirstPart() {
    return Container(
        child: Image.asset(AppConstants.logoWithoutBgPath));
  }

  Widget _buildSecondPart() {
    return Container(
      child: Column(
        children: [
          _buildSecondFirstPart(),
          _buildSecondSecondPart(),
          _buildSecondThirdPart(),
          _buildSecondFourthPart()
        ],
      ),
    );
  }

  Widget _buildThirdPart() {
    return Container();
  }

  //region Second Part Widgets
  Widget _buildSecondFirstPart(){
   return Container(
     margin: EdgeInsets.symmetric(horizontal: 30),
     child: Row(
       children: [
         Icon(Icons.person),
         Expanded(
           child: TextField(
             obscureText: true,
             decoration: InputDecoration(
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(36),
               ),
               labelText: 'Login',
               labelStyle: TextStyle(
                 color: AppColors.textColor
               ),
             ),
           ),
         )
       ],
     ),
   );
  }

  Widget _buildSecondSecondPart(){
    return Container();
  }

  Widget _buildSecondThirdPart(){
    return Container();
  }

  Widget _buildSecondFourthPart(){
    return Container();
  }
  //endregion

}
