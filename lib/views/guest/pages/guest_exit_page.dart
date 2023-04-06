import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../../../helpers/constants/app_colors.dart';
import '../../../helpers/constants/app_constants.dart';
import '../../../widgets/dialogs.dart';

class GuestExitPage extends StatelessWidget {
  const GuestExitPage({Key? key}) : super(key: key);

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
                await Dialogs.showConfirmDialog(context, "Confirmação", "Deseja sair do aplicativo?", "Sim", "Não");
              },
              child: Text("Sair do App", style: TextStyle(color: AppColors.textColor, fontSize: 18,))),
          const SizedBox(height: 50,),
          Text("versão do app: ${AppConstants.appVersion}", style: TextStyle(color: AppColors.mainColor),),
        ],
      )
    );
  }


}
