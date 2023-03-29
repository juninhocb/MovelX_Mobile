import 'dart:ffi';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mobile_movelx/helpers/constants/app_constants.dart';

import '../../../helpers/constants/app_colors.dart';
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
  List<String> _imagesPath = [
    AppConstants.guestImage1,
    AppConstants.guestImage2,
    AppConstants.guestImage3,
    AppConstants.guestImage4,
    AppConstants.guestImage5
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
      padding: EdgeInsets.only(top: 12, right: 12, left: 12),
      height: 65,
      color: AppColors.mainColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.person,
                color: AppColors.detailColor,
                size: 30.0,
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                "Blumenau",
                style: TextStyle(fontSize: 15, color: AppColors.detailColor),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: AppColors.detailColor,
                size: 30.0,
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.detailColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              Icons.search,
              size: 30.0,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      child: Column(
        children: [_buildFirstBodyPart(),
          _buildDots(),
          _buildSecondBodyPart()],
      ),
    );
  }

  Widget _buildFirstBodyPart() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10, left: 10),
          child: Text(
            "Melhores projetos 2023",
            style: TextStyle(fontSize: 25, color: AppColors.detailColor),
          ),
        ),
        SizedBox(
          height: 300,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 6.0),
                child: CarouselSlider(
                  carouselController: _carouselController,
                  options: CarouselOptions(
                      height: 200.0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndexPage = index.toDouble();
                          _currentImage = _imagesPath[index];
                        });
                      }),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
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
                  height: 100,
                  width: 265,
                  margin: EdgeInsets.only(
                      left: 30,
                      right: 30,
                      top:170.0), // Add top padding here
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.secondaryDetailColor,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.secondaryDetailColor,
                        blurRadius: 5.0,
                        offset: Offset(0, 5),
                      ),
                      BoxShadow(color: AppColors.secondaryDetailColor, offset: Offset(-5, 0)),
                      BoxShadow(color: AppColors.secondaryDetailColor, offset: Offset(5, 0)),
                    ],
                  ),
                  child: Container(
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Marcenaria BFD", style: TextStyle(
                          fontSize: 16,
                          color: AppColors.mainColor,
                          fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 7,),
                        Row(
                          children: [
                            Wrap(
                              children: List.generate(
                                  5,
                                      (index) => Icon(Icons.star,
                                      color: AppColors.mainColor, size: 20)),
                            ),
                            SizedBox(width: 15,),
                            Text("127 comentários", style: TextStyle(
                              color: AppColors.mainColor
                            ),)
                          ],
                        ),
                        SizedBox(height: 7,),
                        Row(
                          children: [
                            IconAndText(icon: Icons.monetization_on, text: "R\$ 230,00",),
                            SizedBox(width: 5,),
                            IconAndText(icon: Icons.location_on_sharp, text: "1.7 km",),
                            SizedBox(width: 5,),
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
        )
      ],
    );
  }

  Widget _buildDots() {
    return SizedBox(
      height: 35,
      child: DotsIndicator(
        dotsCount: _pageLength,
        position: _currentIndexPage,
        decorator: const DotsDecorator(
            color: AppColors.detailColor, activeColor: AppColors.mainColor),
      ),
    );
  }

  Widget _buildSecondBodyPart() {
    return Container(
      height: 200,
      child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index){
              return Container(
                child: Text("The ${index} index"),
              );
      }),
    );
  }
}
