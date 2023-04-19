import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mobile_movelx/helpers/constants/app_constants.dart';
import 'package:mobile_movelx/views/guest/pages/home_children/project_from_home_page.dart';
import 'package:mobile_movelx/views/guest/pages/home_children/woodwork_from_home_page.dart';

import '../../../helpers/constants/app_colors.dart';
import '../../../helpers/dimensions/dimensions.dart';
import '../../../widgets/icon_and_text.dart';

class GuestHomePage extends StatefulWidget {
  const GuestHomePage({Key? key}) : super(key: key);

  @override
  State<GuestHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<GuestHomePage> {
  final CarouselController _carouselController = CarouselController();
  final _pageLength = 5;
  double _currentIndexPage = 0.0;
  final List<String> _topProjectsImagesPath = const [
    AppConstants.guestImage1,
    AppConstants.guestImage2,
    AppConstants.guestImage3,
    AppConstants.guestImage4,
    AppConstants.guestImage5
  ];

  final List<String> _logoOfEnterpriseImagesPath = const [
    AppConstants.logoImage1,
    AppConstants.logoImage2,
    AppConstants.logoImage3,
    AppConstants.logoImage4,
    AppConstants.logoImage5,
    AppConstants.logoImage6,
  ];

  final List<String> _nameOfEnterprise = const [
    "Gran Móveis",
    "Marcenaria Rosler Móveis",
    "Innfino Indústria de Móveis",
    "Modulalr Móveis",
    "Marcenaria São Luiz",
    "RK Móveis e Projetos"
  ];

  String _currentImage = AppConstants.guestImage1;

  //region LifeCycle

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  //endregion

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.textColor,
      body: Column(
        children: [_buildTopFixedMenu(), _buildBody()],
      ),
    );
  }

  Widget _buildTopFixedMenu() {
    return Container(
      padding: EdgeInsets.only(top: Dimensions.height12, right: Dimensions.width12, left: Dimensions.width12),
      height: Dimensions.height60 + Dimensions.height5,
      color: AppColors.mainColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.person,
                color: AppColors.detailColor,
                size: Dimensions.height30,
              ),
              SizedBox(
                width: Dimensions.width12,
              ),
              Text(
                "Blumenau",
                style: TextStyle(fontSize: Dimensions.height15, color: AppColors.detailColor),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: AppColors.detailColor,
                size: Dimensions.height30,
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.detailColor,
              borderRadius: BorderRadius.circular(Dimensions.height12),
            ),
            child: Icon(
              Icons.search,
              size: Dimensions.height30,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Expanded(
      child: Column(
        children: [_buildFirstBodyPart(),
          _buildDots(),
          _buildSecondBodyPart()],
      ),
    );
  }

  Widget _buildFirstBodyPart() {
    return GestureDetector(
      onTap: (){
        if (mounted){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const ProjectFromHomePage()));
        }

      },
      child: SizedBox(
        height: Dimensions.height275,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 6.0),
              child: CarouselSlider(
                carouselController: _carouselController,
                options: CarouselOptions(
                    height: Dimensions.height50*4,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndexPage = index.toDouble();
                        _currentImage = _topProjectsImagesPath[index];
                      });
                    }),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: Dimensions.width10/2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.height12),
                          image: DecorationImage(
                            image: AssetImage(_currentImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: Dimensions.height150 - Dimensions.height40,
                width: Dimensions.height275 - Dimensions.height10,
                margin: EdgeInsets.only(
                    left: Dimensions.width30,
                    right: Dimensions.width30,
                    top: Dimensions.height150 + Dimensions.height10*2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.height10*2),
                  color: AppColors.secondaryDetailColor,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.secondaryDetailColor,
                      blurRadius: Dimensions.height5,
                      offset: Offset(0, Dimensions.height5),
                    ),
                    BoxShadow(color: AppColors.secondaryDetailColor, offset: Offset(-Dimensions.height5, 0)),
                    BoxShadow(color: AppColors.secondaryDetailColor, offset: Offset(Dimensions.height5, 0)),
                  ],
                ),
                child: Container(
                  padding: EdgeInsets.only(top: Dimensions.height30/2, left: Dimensions.width10, right: Dimensions.width10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Marcenaria BFD", style: TextStyle(
                        fontSize: Dimensions.height12 + Dimensions.height12/3,
                        color: AppColors.mainColor,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: Dimensions.height7,),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(
                                5,
                                    (index) => Icon(Icons.star,
                                    color: AppColors.mainColor, size: Dimensions.height10*2)),
                          ),
                          SizedBox(width: Dimensions.width10/2,),
                          Text("127 comentários", style: TextStyle(
                            color: AppColors.mainColor
                          ),)
                        ],
                      ),
                      SizedBox(height: Dimensions.height7,),
                      Row(
                        children: [
                          IconAndText(icon: Icons.monetization_on, text: "R\$ 230,00",),
                          SizedBox(width: Dimensions.width10/2,),
                          IconAndText(icon: Icons.location_on_sharp, text: "1.7 km",),
                          SizedBox(width: Dimensions.width10/2,),
                          IconAndText(icon: Icons.timer_outlined, text: "3 dias",),
                        ],
                      )


                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDots() {
    return SizedBox(
      height: Dimensions.height30 + Dimensions.height5,
      child: DotsIndicator(
        dotsCount: _pageLength,
        position: _currentIndexPage,
        decorator: const DotsDecorator(
            color: AppColors.detailColor, activeColor: AppColors.mainColor),
      ),
    );
  }

  Widget _buildSecondBodyPart() {
    return Expanded(
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index){
          return SizedBox(
            height: index == 0 ? Dimensions.height150 - Dimensions.height40 : Dimensions.height40*3 + Dimensions.height5,
            child: GestureDetector(
              onTap: (){
                if (mounted){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const WoodWorkFromHomePage()));
                }
              },
              child: Container(
                margin: index == 0 ? EdgeInsets.only(left: Dimensions.width10*2, right: Dimensions.width10*2) : EdgeInsets.only(top: Dimensions.height15, left: Dimensions.width10*2, right: Dimensions.width10*2),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.secondaryDetailColor,
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage(_logoOfEnterpriseImagesPath[index]),
                            fit: BoxFit.cover
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: Dimensions.height150 - Dimensions.height15 - Dimensions.height10,
                        decoration: const BoxDecoration(
                          color: AppColors.secondaryDetailColor,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(12), bottomRight: Radius.circular(12)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(Dimensions.marginAll4),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _nameOfEnterprise[index].toUpperCase(),
                                style: TextStyle(
                                  fontSize: Dimensions.height15,
                                  color: AppColors.mainColor,
                                  fontWeight: FontWeight.bold
                                ),

                              ),
                              SizedBox(height: Dimensions.height10,),
                              Text(
                                "Rua Gustavo Zimmermann - 1200, Itoupava Central, Blumenau - Santa Catarina- (SC)",
                                style: TextStyle(
                                  fontSize: Dimensions.height15 - Dimensions.height10/10,
                                  color: AppColors.mainColor
                                ),
                              ),
                              SizedBox(height: Dimensions.height10,),
                              Text(
                                "(15) 99628-8616",
                                style: TextStyle(
                                    fontSize: Dimensions.height15 - Dimensions.height10/10,
                                    color: AppColors.mainColor
                                ),
                              ),


                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }),
    );
  }
}
