import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_movelx/views/enterprise/home_items/1_item_page.dart';
import 'package:mobile_movelx/views/enterprise/home_items/2_item_page.dart';
import 'package:mobile_movelx/views/enterprise/home_items/3_item_page.dart';
import 'package:mobile_movelx/views/enterprise/home_items/4_item_page.dart';
import 'package:mobile_movelx/views/enterprise/home_items/6_item_page.dart';
import 'package:mobile_movelx/views/enterprise/home_items/7_item_page.dart';
import 'package:mobile_movelx/views/commons/guest_exit_page.dart';
import 'package:sidebarx/sidebarx.dart';

import '../../helpers/dimensions/dimensions.dart';
import 'home_items/5_item_page.dart';

class PageSelector extends StatelessWidget {
  const PageSelector({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        switch (controller.selectedIndex) {
          case 0:
            return FirstItemPage();
          case 1:
            return SecondItemPage();
          case 2:
            return ThirdItemPage();
          case 3:
            return FourthItemPage();
          case 4:
            return FifthItemPage();
          case 5:
            return SixthItemPage();
          case 6:
            return SeventhItemPage();
          case 7:
            return ListView.builder(
              padding: EdgeInsets.only(top: Dimensions.height10),
              itemBuilder: (context, index) => Container(
                height: Dimensions.height10*10,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: Dimensions.height10, right: Dimensions.width10, left: Dimensions.width10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.marginAll8*2.5),
                  color: Theme.of(context).canvasColor,
                  boxShadow: const [BoxShadow()],
                ),
              ),
            );
          case 8:
            return ExitPage(buildContext: context);
          default:
            return Text(
              "Whatever",
              style: theme.textTheme.headlineSmall,
            );
        }
      },
    );
  }
}