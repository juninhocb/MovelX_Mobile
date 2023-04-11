import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_movelx/views/enterprise/home_selector.dart';
import 'package:sidebarx/sidebarx.dart';

import '../../helpers/constants/app_colors.dart';
import 'home_side_bar.dart';

class EnterpriseHomePage extends StatefulWidget {
  const EnterpriseHomePage({Key? key}) : super(key: key);

  @override
  State<EnterpriseHomePage> createState() => _EnterpriseHomePageState();
}

class _EnterpriseHomePageState extends State<EnterpriseHomePage> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width < 600;
    return Scaffold(
      key: _key,
      appBar: isSmallScreen ? AppBar(
        backgroundColor: AppColors.mainColor,
        title: Text(_getTitleByIndex(_controller.selectedIndex), style: TextStyle(color: AppColors.textColor),),
        leading: IconButton(
          color: AppColors.textColor,
          onPressed: () {
            _key.currentState?.openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
      ) : null,
      backgroundColor: AppColors.textColor,
      drawer: HomeSideBar(controller: _controller,),
      body: Row(
        children: [
          if (!isSmallScreen) HomeSideBar(controller: _controller),
          Expanded(
            child: Center(
              child: PageSelector(
                controller: _controller,
              ),
            ),
          ),
        ],
      ),

    );
  }
}

String _getTitleByIndex(int index) {
  switch (index) {
    case 0:
      return "Home";
    case 1:
      return "Orçamentos";
    case 2:
      return "Projetos";
    case 3:
      return "Produção";
    case 4:
      return "Entrega";
    case 5:
      return "Aditivos";
    case 6:
      return "Pós vendas";
    case 7:
      return "Configurações";
    case 8:
      return "Sair";
    default:
      return 'Not found page';
  }
}




