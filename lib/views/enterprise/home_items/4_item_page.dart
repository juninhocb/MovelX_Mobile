import 'package:flutter/cupertino.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mobile_movelx/views/enterprise/home_items/producao/producao_home_page.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../helpers/constants/app_colors.dart';

class FourthItemPage extends StatefulWidget {
  const FourthItemPage({Key? key}) : super(key: key);

  @override
  State<FourthItemPage> createState() => FourthItemPageState();
}

class FourthItemPageState extends State<FourthItemPage> {
  PersistentTabController _controller = PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreens() {
    return [
      const ProducaoHomePage(),
      const Text("Current Orçamentos"),
      const Text("All Orçamentos"),
      const Text("Metrics"),
      const Text("Embalagens")
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
        icon: Icon(LineIcons.productHunt),
        title: ("Corte"),
        activeColorPrimary: AppColors.textColor,
        inactiveColorPrimary: AppColors.detailColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(LineIcons.borderStyle),
        title: ("Bordeamento"),
        activeColorPrimary: AppColors.textColor,
        inactiveColorPrimary: AppColors.detailColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(LineIcons.tools),
        title: ("Montagem"),
        activeColorPrimary: AppColors.textColor,
        inactiveColorPrimary: AppColors.detailColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(LineIcons.box),
        title: ("Embalagem"),
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
