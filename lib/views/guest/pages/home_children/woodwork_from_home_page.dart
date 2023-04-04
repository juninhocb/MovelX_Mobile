import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_movelx/helpers/constants/app_constants.dart';
import 'package:mobile_movelx/views/guest/pages/guest_home_page.dart';

import '../../../../helpers/constants/app_colors.dart';

class WoodWorkFromHomePage extends StatefulWidget {
  const WoodWorkFromHomePage({Key? key}) : super(key: key);

  @override
  State<WoodWorkFromHomePage> createState() => _WoodWorkFromHomePageState();
}

class _WoodWorkFromHomePageState extends State<WoodWorkFromHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      backgroundColor: AppColors.textColor,
    );
  }

  Widget _buildBody() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 125,
              width: 125,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                      image: AssetImage(AppConstants.logoImage1),
                    fit: BoxFit.cover,
                  ))),
          const SizedBox(height: 10,),
          const Text(
            "Entre em contato",
            style: TextStyle(
                fontSize: 25,
                color: AppColors.mainColor,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10,),
          _buildForm()
        ],
      ),
    );
  }

  Widget _buildForm() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 32),
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.secondaryDetailColor,
      ),
      child: Column(
        children: [
          TextFormField(
              cursorColor: AppColors.mainColor,
              decoration: InputDecoration(
                  icon: Icon(Icons.subject),
                  labelText: 'Assunto',
                  labelStyle: TextStyle(
                    color: AppColors.mainColor,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.mainColor),
                  ))),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
              cursorColor: AppColors.mainColor,
              decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'Nome',
                  labelStyle: TextStyle(
                    color: AppColors.mainColor,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.mainColor),
                  ))),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
              cursorColor: AppColors.mainColor,
              decoration: InputDecoration(
                  icon: Icon(Icons.mail),
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: AppColors.mainColor,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.mainColor),
                  ))),
          const SizedBox(height: 15,),
          TextFormField(
            maxLines: 2,
              maxLength: 50,
              cursorColor: AppColors.mainColor,
              decoration: InputDecoration(
                labelText: "Mensagem",
                  labelStyle: TextStyle(
                    color: AppColors.mainColor,
                  ),
                  enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(
                       color: AppColors.mainColor,
                       width: 1.5
                     )
                  ),
                  helperText: 'Helper Text',
              )),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (mounted){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const GuestHomePage()));
                  }
                },
                child: Text("voltar"),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(AppColors.textColor),
                    foregroundColor: MaterialStatePropertyAll(AppColors.mainColor)),
              ),
              const SizedBox(width: 15,),
              ElevatedButton(
                onPressed: () {},
                child: Text("Enviar"),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(AppColors.mainColor),
                    foregroundColor: MaterialStatePropertyAll(AppColors.textColor)),
              ),

            ],
          )
        ],
      ),
    );
  }
}
