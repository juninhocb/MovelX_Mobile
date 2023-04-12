import 'package:flutter/cupertino.dart';
import 'package:line_icons/line_icons.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../helpers/constants/app_colors.dart';
import 'aditivos/aditivo_home_page.dart';

class SixthItemPage extends StatefulWidget {
  const SixthItemPage({Key? key}) : super(key: key);

  @override
  State<SixthItemPage> createState() => SixthItemPageState();
}

class SixthItemPageState extends State<SixthItemPage> {
  PersistentTabController _controller = PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreens() {
    return [
      const AditivoHomePage(),
      const Text("Current Orçamentos"),
      const Text("All Orçamentos"),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: AppColors.textColor,
        inactiveColorPrimary: AppColors.detailColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(LineIcons.bookOpen),
        title: ("Agendamento"),
        activeColorPrimary: AppColors.textColor,
        inactiveColorPrimary: AppColors.detailColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(LineIcons.bandAid),
        title: ("Correção/Produção"),
        activeColorPrimary: AppColors.textColor,
        inactiveColorPrimary: AppColors.detailColor,
      ),
    ];
  }


  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      confineInSafeArea: true,
      backgroundColor: AppColors.mainColor,
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style3,
      items: _navBarsItems(),

    );

  }
}
