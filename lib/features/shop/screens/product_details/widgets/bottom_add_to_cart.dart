import 'package:azyro_ecommerce_app/common/widgets/icons/circular_icon.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/helpers/exports.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AzyroHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: SizeConstants.defaultSpace, vertical: SizeConstants.defaultSpace / 2),
      decoration: BoxDecoration(
        color: isDark? AppColors.darkerGrey: AppColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(SizeConstants.cardRadiusLg),
          topRight: Radius.circular(SizeConstants.cardRadiusLg),
          
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const AzyroCircularIcon(icon: Iconsax.minus,
              backgroundColor: AppColors.darkerGrey,
              width: 40,
              height: 40,
              color: AppColors.white,
              ),

              const SizedBox(width: SizeConstants.spaceBtwItems,),
              Text('2', style: Theme.of(context).textTheme.titleSmall,),
              const SizedBox(width: SizeConstants.spaceBtwItems,),

              const AzyroCircularIcon(icon: Iconsax.add,
              backgroundColor: AppColors.darkerGrey,
              width: 40,
              height: 40,
              color: AppColors.white,
              ),

              
            ],
          ),
          ElevatedButton(onPressed: (){}, 
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(SizeConstants.md),
            backgroundColor: AppColors.black,
            side: const BorderSide(color: AppColors.black)
          ),
          
          child: const Text('Add to Cart'))
        ],
      ),
    );
  }
}