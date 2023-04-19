import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_movelx/helpers/dimensions/dimensions.dart';

import '../helpers/constants/app_colors.dart';

class TextAndField extends StatelessWidget {
  final String text;
  final Color? textColor;

  const TextAndField(
      {Key? key,
        required this.text,
        this.textColor = AppColors.mainColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: TextStyle(
          fontSize: Dimensions.height15,
          fontWeight: FontWeight.bold,
          color: textColor
        ),),
        SizedBox(width: Dimensions.width10,),
        const TextField()
      ],
    );
  }
}
