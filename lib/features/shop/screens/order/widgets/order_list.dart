import 'package:azyro_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/helpers/exports.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrderListItems extends StatelessWidget {
  const OrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AzyroHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_, index)=> const SizedBox(height: SizeConstants.spaceBtwItems,),
      itemBuilder: (_, index)=> AzyroRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(SizeConstants.md),
        backgroundColor: isDark? AppColors.dark: AppColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Row 1
            Row(
              children: [
                // Icon
                Icon(Iconsax.ship),
                SizedBox(width: SizeConstants.spaceBtwItems/2,),
      
                // Status and Date
                Expanded(
                  child: Column(
                     mainAxisSize: MainAxisSize.min,
                     crossAxisAlignment: CrossAxisAlignment.start,
                  
                    children: [
                      Text('Processing', style: Theme.of(context).textTheme.bodyLarge!.apply(color: AppColors.primary, fontSizeDelta: 1),),
                      Text('21 Sept 2025', style: Theme.of(context).textTheme.headlineSmall,)
                    ],
                  ),
                ),
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34, size: SizeConstants.iconSm,))
              ],
            ),
            SizedBox(height: SizeConstants.spaceBtwItems,),
      
            // Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // Icon
                      Icon(Iconsax.tag),
                      SizedBox(width: SizeConstants.spaceBtwItems/2,),
                  
                      // Status and Date
                      Expanded(
                        child: Column(
                           mainAxisSize: MainAxisSize.min,
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order', style: Theme.of(context).textTheme.labelMedium!.apply(color: AppColors.primary, fontSizeDelta: 1),),
                            Text('#256f2', style: Theme.of(context).textTheme.headlineSmall,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      // Icon
                      Icon(Iconsax.calendar),
                      SizedBox(width: SizeConstants.spaceBtwItems/2,),
                  
                      // Status and Date
                      Expanded(
                        child: Column(
                           mainAxisSize: MainAxisSize.min,
                           crossAxisAlignment: CrossAxisAlignment.start,
                        
                          children: [
                            Text('Shipping Date', style: Theme.of(context).textTheme.labelMedium!.apply(color: AppColors.primary, fontSizeDelta: 1),),
                            Text('26 Sept 2025', style: Theme.of(context).textTheme.headlineSmall,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}