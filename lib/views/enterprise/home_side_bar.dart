import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

import '../../helpers/constants/app_colors.dart';
import '../../helpers/constants/app_constants.dart';
import '../../helpers/dimensions/dimensions.dart';

class HomeSideBar extends StatelessWidget {
  const HomeSideBar({
    Key? key,
    required SidebarXController controller,
  })  : _controller = controller,
        super(key: key);

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      theme: SidebarXTheme(
        margin: EdgeInsets.all(Dimensions.marginAll4*2.5),
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(Dimensions.marginAll8*2.5),
        ),
        hoverColor: AppColors.textColor,
        textStyle: const TextStyle(color: AppColors.textColor),
        selectedTextStyle: const TextStyle(color: AppColors.detailColor),
        itemTextPadding: EdgeInsets.only(left: Dimensions.width30),
        selectedItemTextPadding: EdgeInsets.only(left: Dimensions.width30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.marginAll4*2.5),
          border: Border.all(color: AppColors.mainColor),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.marginAll4*2.5),
          border: Border.all(
            color: AppColors.mainColor,
          ),
          gradient: const LinearGradient(
            colors: [AppColors.mainColor, AppColors.textColor],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: Dimensions.marginAll4*2.5*3,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: AppColors.textColor,
          size: Dimensions.height10*2,
        ),
        selectedIconTheme: IconThemeData(
          color: AppColors.textColor,
          size: Dimensions.height10*2,
        ),
      ),
      extendedTheme: SidebarXTheme(
        width: Dimensions.width150 + Dimensions.width10*2 + Dimensions.width10/2,
        decoration: const BoxDecoration(
          color: AppColors.mainColor,
        ),
      ),
      headerBuilder: (context, extended) {
        return SizedBox(
          height: Dimensions.height150 - Dimensions.height10,
          child: _controller.extended == false ? Container(child: Image.asset(AppConstants.avatarImage1),) : Column(
            children: [
              SizedBox(height: Dimensions.height10,),
              Image.asset(AppConstants.avatarImage1),
              SizedBox(height: Dimensions.height10,),
              const Text("ZM Móveis Planejados", style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textColor),),
              Text("João santos oliveira", style: TextStyle(fontSize: Dimensions.height10, color: AppColors.textColor)),
              Text("Montador", style: TextStyle(fontSize: Dimensions.height10, color: AppColors.textColor))
            ],
          ),
        );
      },
      items: [
        SidebarXItem(
            icon: Icons.home,
            label: 'Home',
            onTap: (){
            }
        ),
        SidebarXItem(
            icon: Icons.monetization_on,
            label: 'Orçamento',
        ),
        SidebarXItem(
            icon: Icons.design_services,
            label: 'Projetos',
        ),
        SidebarXItem(
            icon: Icons.factory,
            label: 'Produção',
        ),
        SidebarXItem(
            icon: Icons.calendar_month,
            label: 'Entrega',
        ),
        SidebarXItem(
            icon: Icons.add,
            label: 'Aditivos',
        ),
        SidebarXItem(
            icon: Icons.sentiment_satisfied_sharp,
            label: 'Pós venda',
        ),
        SidebarXItem(
            icon: Icons.settings,
            label: 'Configurações',
        ),
        SidebarXItem(
            icon: Icons.power_settings_new,
            label: 'Sair',
        ),
      ],
    );
  }
}