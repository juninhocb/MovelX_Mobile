import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import '../../helpers/constants/app_colors.dart';
import '../../helpers/constants/app_constants.dart';
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
            height: 200,
          child: Image.asset(AppConstants.logoPath),),
          const SizedBox(height: 50,),
          Text("Contato", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: AppColors.mainColor),),
          const SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.place, color: AppColors.mainColor,),
              const SizedBox(width: 7,),
              Text("Blumenau - SC", style: TextStyle(color: AppColors.mainColor, fontSize: 20),)
          ],),
          const SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.mail, color: AppColors.mainColor,),
              const SizedBox(width: 7,),
              Text("juninhocb@hotmail.com", style: TextStyle(color: AppColors.mainColor, fontSize: 20),)
            ],),
          const SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(LineIcons.whatSApp, color: AppColors.mainColor,),
              const SizedBox(width: 7,),
              Text("(15) 99628-8616", style: TextStyle(color: AppColors.mainColor, fontSize: 20),)
            ],),
          const SizedBox(height: 50,),
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
              child: Text("Sair do App", style: TextStyle(color: AppColors.textColor, fontSize: 18,))),
          const SizedBox(height: 50,),
          Text("versão do app: ${AppConstants.appVersion}", style: TextStyle(color: AppColors.mainColor),),
        ],
      )
    );
  }


}
