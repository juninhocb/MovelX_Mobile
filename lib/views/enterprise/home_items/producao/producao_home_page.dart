import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_movelx/helpers/constants/app_colors.dart';

class ProducaoHomePage extends StatelessWidget {
  const ProducaoHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.textColor,
      body: _buildPage(),
    );
  }

  Widget _buildPage() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Funcionamento do módulo de produção",
                style: TextStyle(
                    color: AppColors.mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25)),
            SizedBox(
              height: 10,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at auctor nunc. "
                  "Fusce mi urna, cursus sed lectus nec, egestas efficitur justo. "
                  "Pellentesque habitant morbi tristique senectus et netus et "
                  "malesuada fames ac turpis egestas. Nulla eleifend, orci eget "
                  "rutrum finibus, libero diam mollis elit, vitae ullamcorper "
                  "quam libero a quam.",
              style: TextStyle(color: AppColors.mainColor, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Text("1. Corte", style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.mainColor, fontSize: 20),),
            SizedBox(
              height: 10,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at auctor nunc. "
                  "Fusce mi urna, cursus sed lectus nec, egestas efficitur justo. "
                  "Pellentesque habitant morbi tristique senectus et netus et ",
              style: TextStyle(color: AppColors.mainColor, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Text("2. Bordeamento", style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.mainColor, fontSize: 20),),
            SizedBox(
              height: 10,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at auctor nunc. "
                  "Fusce mi urna, cursus sed lectus nec, egestas efficitur justo. "
                  "Pellentesque habitant morbi tristique senectus et netus et ",
              style: TextStyle(color: AppColors.mainColor, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Text("3. Montagem", style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.mainColor, fontSize: 20),),
            SizedBox(
              height: 10,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at auctor nunc. "
                  "Fusce mi urna, cursus sed lectus nec, egestas efficitur justo. "
                  "Pellentesque habitant morbi tristique senectus et netus et ",
              style: TextStyle(color: AppColors.mainColor, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Text("4. Embalagem", style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.mainColor, fontSize: 20),),
            SizedBox(
              height: 10,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at auctor nunc. "
                  "Fusce mi urna, cursus sed lectus nec, egestas efficitur justo. "
                  "Pellentesque habitant morbi tristique senectus et netus et ",
              style: TextStyle(color: AppColors.mainColor, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}