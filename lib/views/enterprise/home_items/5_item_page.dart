import 'package:flutter/cupertino.dart';
import 'package:line_icons/line_icons.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../helpers/constants/app_colors.dart';
import 'entrega/entrega_home_page.dart';

class FifthItemPage extends StatefulWidget {
  const FifthItemPage({Key? key}) : super(key: key);

  @override
  State<FifthItemPage> createState() => FifthItemPageState();
}

class FifthItemPageState extends State<FifthItemPage> {
  PersistentTabController _controller = PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreens() {
    return [
      const EntregaHomePage(),
      const Text("Current Orçamentos"),
      const Text("All Orçamentos"),
      const Text("Metrics")
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
        icon: Icon(LineIcons.truck),
        title: ("Carregamento"),
        activeColorPrimary: AppColors.textColor,
        inactiveColorPrimary: AppColors.detailColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(LineIcons.map),
        title: ("Itinerário"),
        activeColorPrimary: AppColors.textColor,
        inactiveColorPrimary: AppColors.detailColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(LineIcons.tools),
        title: ("Montagem"),
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
