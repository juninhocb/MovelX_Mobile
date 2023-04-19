import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../../helpers/constants/app_colors.dart';
import '../../helpers/constants/app_constants.dart';
import '../../helpers/dimensions/dimensions.dart';
import '../../helpers/routes/app_routes.dart';
import '../../widgets/dialogs.dart';

class ExitPage extends StatelessWidget {
  final BuildContext buildContext;

  const ExitPage({required this.buildContext, Key? key}) : super(key: key);

  void popScreen() {
    Navigator.pushReplacementNamed(buildContext, AppRoutes.getLoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.textColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: Dimensions.height10*20,
          child: Image.asset(AppConstants.logoPath),),
          SizedBox(height: Dimensions.height50,),
          Text("Contato", style: TextStyle(fontSize: Dimensions.height30, fontWeight: FontWeight.bold, color: AppColors.mainColor),),
          SizedBox(height: Dimensions.height50/2,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.place, color: AppColors.mainColor,),
              SizedBox(width: Dimensions.width7,),
              Text("Blumenau - SC", style: TextStyle(color: AppColors.mainColor, fontSize: Dimensions.height10*2),)
          ],),
          SizedBox(height: Dimensions.height5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.mail, color: AppColors.mainColor,),
              SizedBox(width: Dimensions.width7,),
              Text("juninhocb@hotmail.com", style: TextStyle(color: AppColors.mainColor, fontSize: Dimensions.height10*2),)
            ],),
          SizedBox(height: Dimensions.height5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(LineIcons.whatSApp, color: AppColors.mainColor,),
              SizedBox(width: Dimensions.width7,),
              Text("(15) 99628-8616", style: TextStyle(color: AppColors.mainColor, fontSize: Dimensions.height10*2),)
            ],),
          SizedBox(height: Dimensions.height50,),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(AppColors.mainColor)
              ),
              onPressed: () async{
                bool? ret =  await Dialogs.showConfirmDialog(context, "Confirmação", "Deseja sair do aplicativo?", "Sim", "Não");
                if (ret!){
                  popScreen();
                }
              },
              child: Text("Sair do App", style: TextStyle(color: AppColors.textColor, fontSize: Dimensions.height10*1.8,))),
          SizedBox(height: Dimensions.height50,),
          Text("versão do app: ${AppConstants.appVersion}", style: TextStyle(color: AppColors.mainColor),),
        ],
      )
    );
  }


}
