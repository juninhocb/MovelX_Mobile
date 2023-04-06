import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_movelx/helpers/constants/app_constants.dart';

import '../../../helpers/constants/app_colors.dart';
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
                height: 350,
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
          bottom: 15,
          left: 170,
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
          padding: EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _bigAdvice[_currentIndexPage.toInt()],
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: AppColors.mainColor),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                _smallAdvice[_currentIndexPage.toInt()],
                style: const TextStyle(
                    fontSize: 20, color: AppColors.secondaryColor),
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
      height: 300,
      width: double.maxFinite,
      color: AppColors.textColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 60,
            width: 300,
            child: ElevatedButton(
              onPressed: () async {
                await Dialogs.showConfirmDialog(context, "Confirmação" , "Deseja prosseguir com o procedimento?", "Prosseguir", "Não");
              },
              child: Text(
                "Experimentar Grátis",
                style: TextStyle(color: AppColors.textColor, fontSize: 20),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(AppColors.mainColor),
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          SizedBox(
            height: 60,
            width: 300,
            child: ElevatedButton(
              onPressed: () async{
                await Dialogs.showConfirmDialog(context, "Confirmação" , "Deseja prosseguir com o procedimento?", "Prosseguir", "Não");
              },
              child: Text(
                "Adquirir por R\$ 15,00 ao mês ",
                style: TextStyle(color: AppColors.textColor, fontSize: 20),
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
