import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_movelx/helpers/constants/app_constants.dart';
import 'package:mobile_movelx/views/guest/pages/guest_home_page.dart';

import '../../../../helpers/constants/app_colors.dart';

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
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(AppConstants.guestImage1))),
              ),
            ),
            Positioned(
                left: 15,
                top: 15,
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
                      size: 30,
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
                right: 15,
                bottom: 15,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.mainColor),
                  child: Icon(
                    Icons.add,
                    color: AppColors.textColor,
                    size: 30,
                  ),
                )),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Comentários (127)",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: AppColors.mainColor),
              ),
              Row(
                children: [
                  Wrap(
                    children: List.generate(
                        4,
                        (index) => Icon(Icons.star,
                            color: AppColors.mainColor, size: 20)),
                  ),
                  Icon(Icons.star_half, color: AppColors.mainColor, size: 20),
                  Text("4.6")
                ],
              ),
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    height: 75,
                    margin: const EdgeInsets.symmetric(horizontal: 16.0),
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
                            margin: EdgeInsets.only(left: 5, top: 10),
                            child: Image.asset(_avatarImages[index])
                        ),
                        const SizedBox(width: 10,),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Text("Assunto: Muito bonito", style: TextStyle(fontSize: 15, color: AppColors.mainColor, fontWeight: FontWeight.bold),),
                                  const SizedBox(width: 70,),
                                  Text("5", style: TextStyle(fontSize: 15, color: AppColors.mainColor),),
                                  const SizedBox(width: 5,),
                                  Icon(Icons.thumb_up_alt_outlined, color: AppColors.mainColor, size: 20,),
                                  const SizedBox(width: 7,),
                                  Text("2", style: TextStyle(fontSize: 15, color: AppColors.mainColor),),
                                  const SizedBox(width: 5,),
                                  Icon(Icons.thumb_down_alt_outlined, color: AppColors.mainColor, size: 20,)
                                ],
                              ),
                              SizedBox(height: 5,),
                              Text(
                                "is simply dummy text of the printing and. ",
                                maxLines: 3,
                                style: TextStyle(
                                  fontSize: 12
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
