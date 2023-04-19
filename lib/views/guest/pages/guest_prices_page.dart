import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_movelx/helpers/constants/app_constants.dart';

import '../../../helpers/constants/app_colors.dart';
import '../../../helpers/dimensions/dimensions.dart';
import '../../../widgets/dialogs.dart';

class GuestPricesPage extends StatefulWidget {
  const GuestPricesPage({Key? key}) : super(key: key);

  @override
  State<GuestPricesPage> createState() => _GuestPricesPageState();
}

class _GuestPricesPageState extends State<GuestPricesPage> {
  final List<String> _pathImages = [
    AppConstants.priceImage1,
    AppConstants.priceImage2,
    AppConstants.priceImage3
  ];

  final List<String> _bigAdvice = [
    "Garanta qualidade a seus clientes",
    "Faça bons negócios",
    "Tome as melhores decisões"
  ];

  final List<String> _smallAdvice = [
    "Tenha controle sobre todo o processo até a entrega do projeto",
    "Obtenha informações sobre seus clientes",
    "Seja mais acertivos em suas decisões com os dados disponibilizados pelo App"
  ];

  double _currentIndexPage = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [_buildFirstHalf(), _buildSecondHalf()],
      ),
    );
  }

  Widget _buildFirstHalf() {
    return Stack(
      children: [
        CarouselSlider(
            options: CarouselOptions(
                height: Dimensions.height150*2 + Dimensions.height50,
                viewportFraction: 1.0,
                autoPlay: true,
                autoPlayInterval: AppConstants.twoSeconds,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndexPage = double.parse(index.toString());
                  });
                }),
            items: [1, 2, 3].map((index) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(_pathImages[index - 1]),
                            fit: BoxFit.cover)),
                  );
                },
              );
            }).toList()),
        Positioned(
          bottom: Dimensions.height15,
          left: Dimensions.width10*17,
          child: DotsIndicator(
              dotsCount: 3,
              position: _currentIndexPage,
              decorator: DotsDecorator(
                color: AppColors.textColor, // Inactive color
                activeColor: AppColors.mainColor,
              )),
        ),
        Positioned(
            child: Container(
          padding: EdgeInsets.all(Dimensions.marginAll4*12 + Dimensions.marginAll4/2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _bigAdvice[_currentIndexPage.toInt()],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Dimensions.height30,
                    color: AppColors.mainColor),
              ),
              SizedBox(
                height: Dimensions.height5,
              ),
              Text(
                _smallAdvice[_currentIndexPage.toInt()],
                style: TextStyle(
                    fontSize: Dimensions.height10*2, color: AppColors.secondaryColor),
                maxLines: 2,
              ),
            ],
          ),
        ))
      ],
    );
  }

  Widget _buildSecondHalf() {
    return Container(
      height: Dimensions.height150*2,
      width: double.maxFinite,
      color: AppColors.textColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: Dimensions.height60,
            width: Dimensions.width30*10,
            child: ElevatedButton(
              onPressed: () async {
                await Dialogs.showConfirmDialog(context, "Confirmação" , "Deseja prosseguir com o procedimento?", "Prosseguir", "Não");
              },
              child: Text(
                "Experimentar Grátis",
                style: TextStyle(color: AppColors.textColor, fontSize: Dimensions.height40/2),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(AppColors.mainColor),
              ),
            ),
          ),
          SizedBox(
            height: Dimensions.height30 + Dimensions.height5,
          ),
          SizedBox(
            height: Dimensions.height30*2,
            width: Dimensions.width150*2,
            child: ElevatedButton(
              onPressed: () async{
                await Dialogs.showConfirmDialog(context, "Confirmação" , "Deseja prosseguir com o procedimento?", "Prosseguir", "Não");
              },
              child: Text(
                "Adquirir por R\$ 15,00 ao mês ",
                style: TextStyle(color: AppColors.textColor, fontSize: Dimensions.height40/2),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(AppColors.mainColor),
              ),
            ),
          )
        ],
      ),
    );
  }


}
