import 'package:azyro_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:azyro_ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:azyro_ecommerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:azyro_ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:azyro_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/enums.dart';
import 'package:azyro_ecommerce_app/utils/constants/image_strings.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/helpers/exports.dart';
import 'package:flutter/material.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AzyroHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price and Sale Price
        Row(
          children: [
            // Sale tag
            AzyroRoundedContainer(
              radius: SizeConstants.sm,
              backgroundColor: AppColors.secondary,
              padding: EdgeInsets.symmetric(horizontal: SizeConstants.sm, vertical: SizeConstants.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: AppColors.black),),
            ),
            const SizedBox(width: SizeConstants.spaceBtwItems,),

            // Price
            Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: SizeConstants.spaceBtwItems,),
            ProductPriceText(price: '175', isLarge: true,)
          ],
        ),
        const SizedBox(width: SizeConstants.spaceBtwSections,),

        // Title
        ProductTitleText(title: 'Green Nike Sports Shoes'),
        const SizedBox(width: SizeConstants.spaceBtwSections/1.5,),

        // Stock Status
        Row(
          children: [
            const ProductTitleText(title: 'Status'),
            const SizedBox(width: SizeConstants.spaceBtwItems,),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium,)
          ],
        ),
        const SizedBox(height: SizeConstants.spaceBtwItems/1.5,),

        // Brand
        Row(
          children: [
            CircularImage(image: AppImages.shoeIcon,
            width: 32,
            height: 32,
            overlayColor: isDark? AppColors.white: AppColors.black,),
            BrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.medium,),
          ],
        )
      ],

    );
  }
}