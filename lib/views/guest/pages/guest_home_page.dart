import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../helpers/constants/app_colors.dart';

class GuestHomePage extends StatefulWidget {
  const GuestHomePage({Key? key}) : super(key: key);

  @override
  State<GuestHomePage> createState() => _HomePageState();
}


class _HomePageState extends State<GuestHomePage> {

  @override
  void dispose() {
    print('GuestHomePage disposed!');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopFixedMenu(),
          _buildBody()
        ],
      ),
    );
  }

  Widget _buildTopFixedMenu(){
    return Container(
      padding: EdgeInsets.only(top: 12, right: 12, left: 12),
      height: 65,
      color: AppColors.mainColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.person, color: Colors.white, size: 30.0,),
              SizedBox(width: 12,),
              Text("Blumenau", style: TextStyle(
                fontSize: 15,
                color: AppColors.textColor
              ),),
              Icon(Icons.arrow_drop_down,  color: Colors.white, size: 30.0,)
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.detailColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.search, size: 30.0,),
          )
        ],
      ),
    );
  }

  Widget _buildBody(){
    return Container(
      child: Column(
        children: [
          _buildFirtBodyPart(),
          _buildSecondBodyPart()
        ],
      ),
    );
  }

  Widget _buildFirtBodyPart(){
    return Container(
      margin: EdgeInsets.only(top: 24.0),
      child: CarouselSlider(
        options: CarouselOptions(height: 200.0),
        items: [1,2,3,4,5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      color: Colors.amber
                  ),
                  child: Text('text $i', style: TextStyle(fontSize: 16.0),)
              );
            },
          );
        }).toList(),
      ),
    );
  }

  Widget _buildSecondBodyPart(){
    return Container();
  }

}


