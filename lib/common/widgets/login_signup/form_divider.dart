import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/theme/widget_themes/text_theme.dart';
// import 'package:cwt_starter_template/utils/constants/colors.dart';
// import 'package:cwt_starter_template/utils/constants/text_strings.dart';
// import 'package:cwt_starter_template/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.dark,
    required this.text

  });

  final bool dark;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark? AppColors.darkGrey : AppColors.grey, thickness: 0.5, indent: 60, endIndent: 5)),
        Text(text ,style: dark? AzyroTextTheme.darkTextTheme.labelMedium: AzyroTextTheme.lightTextTheme.labelMedium,),
        Flexible(child: Divider(color: dark? AppColors.darkGrey : AppColors.grey, thickness: 0.5, indent: 5, endIndent: 60)),

      ],
    );
  }
}

