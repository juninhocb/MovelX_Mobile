import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_movelx/helpers/constants/app_constants.dart';
import 'package:mobile_movelx/views/guest/pages/guest_home_page.dart';

import '../../../../helpers/constants/app_colors.dart';
import '../../../../helpers/dimensions/dimensions.dart';

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
            height: Dimensions.height150 - Dimensions.height30 + Dimensions.height5,
              width: Dimensions.width150 - Dimensions.width10*2 - Dimensions.height10/2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.marginAll8*2),
                  image: const DecorationImage(
                      image: AssetImage(AppConstants.logoImage1),
                    fit: BoxFit.cover,
                  ))),
          SizedBox(height: Dimensions.height10,),
          Text(
            "Entre em contato",
            style: TextStyle(
                fontSize: Dimensions.height50/2,
                color: AppColors.mainColor,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: Dimensions.height10,),
          _buildForm()
        ],
      ),
    );
  }

  Widget _buildForm() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginAll8*4),
      padding: EdgeInsets.symmetric(horizontal: Dimensions.marginAll8*4, vertical: Dimensions.marginAll8*2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.marginAll8*2),
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
          SizedBox(
            height: Dimensions.height10,
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
          SizedBox(
            height: Dimensions.height10,
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
          SizedBox(height: Dimensions.height15,),
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
          SizedBox(
            height: Dimensions.height15,
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
              SizedBox(width: Dimensions.height15,),
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
