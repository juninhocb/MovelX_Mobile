import 'package:flutter/cupertino.dart';

import '../helpers/constants/app_colors.dart';

class IconAndText extends StatelessWidget {
  final IconData icon;
  final Color? iconColor;
  final String text;
  final Color? textColor;
  IconAndText({
    Key? key, required this.icon, this.iconColor = AppColors.mainColor, required this.text, this.textColor = AppColors.mainColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor),
        Text(text, style: TextStyle(
          color: textColor
        ),)
      ],
    );
  }
}
