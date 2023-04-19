import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_movelx/helpers/constants/app_constants.dart';
import 'package:mobile_movelx/widgets/icon_and_text.dart';
import 'package:line_icons/line_icons.dart';

import '../../../helpers/constants/app_colors.dart';
import '../../../helpers/dimensions/dimensions.dart';

class GuestMyProjects extends StatefulWidget {
  const GuestMyProjects({Key? key}) : super(key: key);

  @override
  State<GuestMyProjects> createState() => _GuestMyProjectsState();
}

class _GuestMyProjectsState extends State<GuestMyProjects> {

  final List<String> _projectsPath = [
    AppConstants.projectImage1,
    AppConstants.projectImage2,
    AppConstants.projectImage3,
    AppConstants.projectImage4,
    AppConstants.projectImage5
  ];

  final List<String> _projectsNames = [
    "Cozinha",
    "Quarto Casal",
    "Quarto Menino",
    "Banheiro",
    "Sala de Estar"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.textColor,
      body: Column(
        children: [
          _buildTopFixedMenu(),
          Expanded(child: _buildBody()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.mainColor,
          onPressed: (){},
          child: const Icon(Icons.favorite, color: AppColors.detailColor,),
      ),
    );
  }

  Widget _buildTopFixedMenu() {
    return Container(
      padding: EdgeInsets.only(top: Dimensions.height12, right: Dimensions.width12, left: Dimensions.width12),
      height: Dimensions.height60 + Dimensions.height5,
      color: AppColors.mainColor,
      child: Container(
        padding: EdgeInsets.only(top: Dimensions.height10),
        width: double.maxFinite,
        child: Text("Meus Projetos", style: TextStyle(
          color: AppColors.detailColor,
          fontSize: Dimensions.height50/2
        ),),
      ),
    );
  }

  Widget _buildBody(){
    return _buildProjects(context);
  }

  Widget _buildProjects(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(Dimensions.marginAll8*2),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(Dimensions.marginAll4*2.5),
            decoration: BoxDecoration(
              color: AppColors.secondaryDetailColor,
              borderRadius: BorderRadius.circular(Dimensions.marginAll8*2)
            ),
            margin: EdgeInsets.only(top: Dimensions.height15),
            child: Row(
              children: [
                ClipOval(
                  child: Container(
                    width: Dimensions.width10*10,
                    height: Dimensions.height50*2,
                    child: Image.asset(_projectsPath[index]),
                  ),
                ),
                SizedBox(width: Dimensions.height40/2),
                Column(
                  children: [
                    Text(_projectsNames[index], style: TextStyle(color: AppColors.mainColor, fontSize: Dimensions.height10*2, fontWeight: FontWeight.bold),),
                    SizedBox(height: Dimensions.height5,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconAndText(icon: Icons.access_time_rounded, text: "Iniciado em: 12/02/2023"),
                        IconAndText(icon: LineIcons.hardHat, text: "Obra concluída: 75 %"),
                        IconAndText(icon: LineIcons.businessTime, text: "Previsão de entrega: 13/03/2023")
                      ],
                    ),

                  ],
                )
              ],
            ),
          );
        }
    );
  }


}
