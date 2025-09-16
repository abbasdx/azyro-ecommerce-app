import 'package:azyro_ecommerce_app/features/shop/screens/cart/cart.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AzyroCartCounterIcon extends StatelessWidget {
  const AzyroCartCounterIcon({
    super.key, this.iconColor , required this.onPressed,
  });

  final Color? iconColor;
  final VoidCallback onPressed;
  

  @override
  Widget build(BuildContext context) {
    final isDark = AzyroHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(onPressed: ()=> Get.to(()=> const CartScreen()), icon: Icon(Iconsax.shopping_bag, color: iconColor,)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: AzyroHelperFunctions.isDarkMode(context)? AppColors.white: AppColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('2',style: Theme.of(context).textTheme.labelLarge!.apply(color: isDark? AppColors.black: AppColors.white, fontSizeFactor: 0.8),),
            ),
          ),
        )
      ],
    );
  }
}

