import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/device/device_utility.dart';
import 'package:azyro_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AzyroSearchContainer extends StatelessWidget {
  const AzyroSearchContainer({
    super.key, required this.text, this.icon = Iconsax.search_normal, this.showBackground=true, this.showBorder=true, this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;


  @override
  Widget build(BuildContext context) {
    
    final isDark = AzyroHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: SizeConstants.defaultSpace),
        child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(SizeConstants.md),
          decoration: BoxDecoration(
            color: showBackground? isDark? AppColors.dark: AppColors.light : Colors.transparent,
            borderRadius: BorderRadius.circular(SizeConstants.cardRadiusLg),
            border: Border.all(color: AppColors.grey)
          ),
          child: Row( 
            children: [
              Icon(icon, color: AppColors.darkerGrey,),
              const SizedBox(width: SizeConstants.spaceBtwItems,),
              Text(text, style: Theme.of(context).textTheme.bodySmall,)
      
            ],
          ),
        ),
      ),
    );
  }
}
