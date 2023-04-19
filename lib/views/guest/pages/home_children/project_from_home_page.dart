import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_movelx/helpers/constants/app_constants.dart';
import 'package:mobile_movelx/views/guest/pages/guest_home_page.dart';

import '../../../../helpers/constants/app_colors.dart';
import '../../../../helpers/dimensions/dimensions.dart';

class ProjectFromHomePage extends StatefulWidget {
  const ProjectFromHomePage({Key? key}) : super(key: key);

  @override
  State<ProjectFromHomePage> createState() => _ProjectFromHomePageState();
}

class _ProjectFromHomePageState extends State<ProjectFromHomePage> {

  final List<String> _avatarImages = [
    AppConstants.avatarImage1,
    AppConstants.avatarImage2,
    AppConstants.avatarImage3,
    AppConstants.avatarImage4,
    AppConstants.avatarImage5,
    AppConstants.avatarImage6
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.textColor,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        Stack(
          children: [
            Positioned(
              child: Container(
                width: double.maxFinite,
                height: Dimensions.height150 + Dimensions.height50*2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(AppConstants.guestImage1))),
              ),
            ),
            Positioned(
                left: Dimensions.width15,
                top: Dimensions.height15,
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const GuestHomePage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.mainColor),
                    child: Icon(
                      Icons.arrow_back_outlined,
                      color: AppColors.textColor,
                      size: Dimensions.height30,
                    ),
                  ),
                )),
            /*Positioned(
                right: 15,
                top: 15,
                child: Container(
                  child: Icon(
                    LineIcons.heart,
                    color: AppColors.mainColor,
                    size: 30,
                  ),
                )), */
            Positioned(
                right: Dimensions.width15,
                bottom: Dimensions.height15,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.mainColor),
                  child: Icon(
                    Icons.add,
                    color: AppColors.textColor,
                    size: Dimensions.height30,
                  ),
                )),
          ],
        ),
        SizedBox(
          height: Dimensions.height15,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.marginAll8*2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Comentários (127)",
                style: TextStyle(
                    fontSize: Dimensions.height15 + Dimensions.height10,
                    fontWeight: FontWeight.bold,
                    color: AppColors.mainColor),
              ),
              Row(
                children: [
                  Wrap(
                    children: List.generate(
                        4,
                        (index) => Icon(Icons.star,
                            color: AppColors.mainColor, size: Dimensions.height40/2)),
                  ),
                  Icon(Icons.star_half, color: AppColors.mainColor, size: Dimensions.height40/2),
                  Text("4.6")
                ],
              ),
            ],
          ),
        ),
        Expanded

          (
            child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    height: Dimensions.height150/2,
                    margin: EdgeInsets.symmetric(horizontal: Dimensions.marginAll8*2),
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.secondaryDetailColor,
                          blurRadius: 5.0,
                          offset: Offset(0, 5),
                        ),
                        BoxShadow(
                            color: AppColors.secondaryDetailColor,
                            blurRadius: 5.0,
                            offset: Offset(-5, 0)),
                        BoxShadow(
                            color: AppColors.secondaryDetailColor,
                            blurRadius: 5.0,
                            offset: Offset(5, 0)),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: Dimensions.width10/2, top: Dimensions.height10),
                            child: Image.asset(_avatarImages[index])
                        ),
                        SizedBox(width: Dimensions.height10,),
                        Padding(
                          padding: EdgeInsets.only(top: Dimensions.height15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children:[
                                  Text("Assunto: Muito bonito", style: TextStyle(fontSize: Dimensions.height15, color: AppColors.mainColor, fontWeight: FontWeight.bold),),
                                  SizedBox(width: Dimensions.width10*7,),
                                  Text("5", style: TextStyle(fontSize: Dimensions.height15, color: AppColors.mainColor),),
                                  SizedBox(width: Dimensions.width10/2,),
                                  Icon(Icons.thumb_up_alt_outlined, color: AppColors.mainColor, size: Dimensions.height10*2,),
                                  SizedBox(width: Dimensions.width7,),
                                  Text("2", style: TextStyle(fontSize: Dimensions.height15, color: AppColors.mainColor),),
                                  SizedBox(width: Dimensions.width10/2,),
                                  Icon(Icons.thumb_down_alt_outlined, color: AppColors.mainColor, size: Dimensions.height10*2,)
                                ],
                              ),
                              SizedBox(height: Dimensions.height5,),
                              Text(
                                "is simply dummy text of the printing and. ",
                                maxLines: 3,
                                style: TextStyle(
                                  fontSize: Dimensions.height10*1.2,
                                  color: AppColors.mainColor
                                ),)
                          ],),
                        )
                      ],
                    ),
                  );
                }))
      ],
    );
  }
}
