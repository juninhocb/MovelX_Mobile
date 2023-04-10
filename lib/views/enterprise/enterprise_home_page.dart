import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_movelx/helpers/constants/app_constants.dart';
import 'package:sidebarx/sidebarx.dart';

import '../../helpers/constants/app_colors.dart';

class EnterpriseHomePage extends StatefulWidget {
  const EnterpriseHomePage({Key? key}) : super(key: key);

  @override
  State<EnterpriseHomePage> createState() => _EnterpriseHomePageState();
}

class _EnterpriseHomePageState extends State<EnterpriseHomePage> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.textColor,
      body: Row(children: [
        _sideBar(),
        _listOfPages()
      ],)
    );
  }

  Widget _sideBar(){
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
            if(mounted){
              setState(() {
                _index = 0;
              });
            }
          }
        ),
        SidebarXItem(
          icon: Icons.monetization_on,
          label: 'Orçamento',
          onTap: (){
            if(mounted){
              setState(() {
                _index = 1;
              });
            }
          }
        ),
        SidebarXItem(
          icon: Icons.design_services,
          label: 'Projetos',
          onTap: (){
              if(mounted){
                setState(() {
                  _index = 2;
                });
              }
            }
        ),
        SidebarXItem(
          icon: Icons.factory,
          label: 'Produção',
          onTap: (){
              if(mounted){
                setState(() {
                  _index = 3;
                });
              }
            }
        ),
        SidebarXItem(
          icon: Icons.calendar_month,
          label: 'Entrega',
          onTap: (){
              if(mounted){
                setState(() {
                  _index = 4;
                });
              }
            }
        ),
        SidebarXItem(
          icon: Icons.add,
          label: 'Aditivos',
          onTap: (){
              if(mounted){
                setState(() {
                  _index = 5;
                });
              }
            }
        ),
        SidebarXItem(
          icon: Icons.sentiment_satisfied_sharp,
          label: 'Pós venda',
          onTap: (){
              if(mounted){
                setState(() {
                  _index = 6;
                });
              }
            }
        ),
        SidebarXItem(
            icon: Icons.settings,
            label: 'Configurações',
            onTap: (){
              if(mounted){
                setState(() {
                  _index = 7;
                });
              }
            }
        ),
        SidebarXItem(
            icon: Icons.power_settings_new,
            label: 'Sair',
            onTap: (){
              if(mounted){
                setState(() {
                  _index = 8;
                });
              }
            }
        ),
      ],

    );
  }

  Widget _listOfPages(){
    switch(_index){
      case 0:
        return Container(child: Text("teste of home"),);
      case 1:
        return Container(child: Text("test of orçamento"),);
      case 2:
        return Container(child: Text("test of projetos"),);
      case 3:
        return Container(child: Text("test of produção"),);
      case 4:
        return Container(child: Text("test of entrega"),);
      case 5:
        return Container(child: Text("test of aditivos"),);
      case 6:
        return Container(child: Text("test of pós vendas"),);
      case 7:
        return Container(child: Text("test of configurações"),);
      case 8:
        return Container(child: Text("test of sair"),);
    }
    return Container();
  }


}
