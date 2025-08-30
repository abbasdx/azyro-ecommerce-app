
import 'package:azyro_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:azyro_ecommerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AzyroAppBar(
      title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: AppColors.grey),),
        Text(AppTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: AppColors.white),)
      ],
    ),
    actions: [
      AzyroCartCounterIcon(onPressed: (){},iconColor: AppColors.white,)
    ],
    );
  }
}

