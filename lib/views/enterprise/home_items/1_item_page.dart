import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_movelx/helpers/constants/app_constants.dart';

import '../../../helpers/constants/app_colors.dart';

class FirstItemPage extends StatelessWidget {
  const FirstItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(child: Text("Bem vindo a sessão enterprise!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: AppColors.mainColor))),
            const SizedBox(height: 10,),
            Container(
              child: const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at auctor nunc. "
                      "Fusce mi urna, cursus sed lectus nec, egestas efficitur justo. "
                      "Pellentesque habitant morbi tristique senectus et netus et "
                      "malesuada fames ac turpis egestas. Nulla eleifend, orci eget "
                      "rutrum finibus, libero diam mollis elit, vitae ullamcorper "
                      "quam libero a quam." , style: TextStyle(color: AppColors.mainColor, fontSize: 16),
              ),
              height: 150,
            ),
            const SizedBox(height: 20,),
            Container(
              height: 450,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.mainColor), 
                image: DecorationImage(image: AssetImage(AppConstants.homeImage))
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              child: const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at auctor nunc. "
                    "Fusce mi urna, cursus sed lectus nec, egestas efficitur justo. "
                    "Pellentesque habitant morbi tristique senectus et netus et "
                    "malesuada fames ac turpis egestas. Nulla eleifend, orci eget "
                    "rutrum finibus, libero diam mollis elit, vitae ullamcorper "
                    "quam libero a quam." , style: TextStyle(color: AppColors.mainColor, fontSize: 16),
              ),
              height: 150,
            )
          ],
        ),
      ),
    );
  }
}
