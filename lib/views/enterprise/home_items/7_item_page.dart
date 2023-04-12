import 'package:flutter/cupertino.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mobile_movelx/views/enterprise/home_items/pos_venda/pos_venda_home_page.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../helpers/constants/app_colors.dart';

class SeventhItemPage extends StatefulWidget {
  const SeventhItemPage({Key? key}) : super(key: key);

  @override
  State<SeventhItemPage> createState() => SeventhItemPageState();
}

class SeventhItemPageState extends State<SeventhItemPage> {
  PersistentTabController _controller = PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreens() {
    return [
      const PosVendaHomePage(),
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
        icon: Icon(LineIcons.check),
        title: ("Feedback Cliente"),
        activeColorPrimary: AppColors.textColor,
        inactiveColorPrimary: AppColors.detailColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.person_crop_circle_badge_checkmark),
        title: ("Nosso Feedback"),
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
