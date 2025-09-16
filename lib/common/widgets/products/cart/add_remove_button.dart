import 'package:azyro_ecommerce_app/common/widgets/icons/circular_icon.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductQuantityWithAddRemoveButton extends StatelessWidget {
  const ProductQuantityWithAddRemoveButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AzyroHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        AzyroCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: SizeConstants.md,
          color: isDark ? AppColors.white : AppColors.black,
          backgroundColor: isDark ? AppColors.darkerGrey : AppColors.light,
        ),
        const SizedBox(width: SizeConstants.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: SizeConstants.spaceBtwItems),

        const AzyroCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: SizeConstants.md,
          color: AppColors.white,
          backgroundColor: AppColors.primary,
        ),
      ],
    );
  }
}
