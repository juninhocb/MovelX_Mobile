import 'package:flutter/cupertino.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../helpers/constants/app_colors.dart';
import 'orcamentos/orcamentos_home_page.dart';

class SecondItemPage extends StatefulWidget {
  const SecondItemPage({Key? key}) : super(key: key);

  @override
  State<SecondItemPage> createState() => _SecondItemPageState();
}

class _SecondItemPageState extends State<SecondItemPage> {
  PersistentTabController _controller = PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreens() {
    return [
      const OrcamentosHomePage(),
      const Text("Current Orçamentos"),
      const Text("All Orçamentos"),
      const Text("Metrics"),
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
        icon: Icon(CupertinoIcons.folder_open),
        title: ("Abertos"),
        activeColorPrimary: AppColors.textColor,
        inactiveColorPrimary: AppColors.detailColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.archivebox),
        title: ("Finalizados"),
        activeColorPrimary: AppColors.textColor,
        inactiveColorPrimary: AppColors.detailColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.chart_bar_alt_fill),
        title: ("Estatísticas"),
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
