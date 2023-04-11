import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

import '../../helpers/constants/app_colors.dart';
import '../../helpers/constants/app_constants.dart';

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
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(20),
        ),
        hoverColor: AppColors.textColor,
        textStyle: TextStyle(color: AppColors.textColor),
        selectedTextStyle: const TextStyle(color: AppColors.detailColor),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.mainColor),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.mainColor,
          ),
          gradient: const LinearGradient(
            colors: [AppColors.mainColor, AppColors.textColor],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: AppColors.textColor,
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: AppColors.textColor,
          size: 20,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        width: 175,
        decoration: BoxDecoration(
          color: AppColors.mainColor,
        ),
      ),
      headerBuilder: (context, extended) {
        return SizedBox(
          height: 140,
          child: _controller.extended == false ? Container(child: Image.asset(AppConstants.avatarImage1),) : Column(
            children: [
              const SizedBox(height: 10,),
              Image.asset(AppConstants.avatarImage1),
              const SizedBox(height: 10,),
              const Text("ZM Móveis Planejados", style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textColor),),
              const Text("João santos oliveira", style: TextStyle(fontSize: 10, color: AppColors.textColor)),
              const Text("Montador", style: TextStyle(fontSize: 10, color: AppColors.textColor))
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