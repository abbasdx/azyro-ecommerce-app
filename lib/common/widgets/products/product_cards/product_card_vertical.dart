import 'package:azyro_ecommerce_app/common/styles/shadows.dart';
import 'package:azyro_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:azyro_ecommerce_app/common/widgets/icons/circular_icon.dart';
import 'package:azyro_ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:azyro_ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:azyro_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/image_strings.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/helpers/exports.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AzyroHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [AzyroShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(SizeConstants.productImageRadius),
          color: isDark ? AppColors.darkerGrey : AppColors.white,
        ),

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Thumbnail, whislist button, discount tag
            AzyroRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(SizeConstants.sm),
              backgroundColor: isDark ? AppColors.dark : AppColors.light,
              child: Stack(
                children: [
                  // Thumbnail Image
                  RoundedImage(
                    imageUrl: AppImages.productImage1,
                    applyImageRadius: true,
                  ),

                  // Sale Tag
                  Positioned(
                    top: 12,
                    child: AzyroRoundedContainer(
                      radius: SizeConstants.sm,
                      backgroundColor: AppColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: SizeConstants.sm,
                        vertical: SizeConstants.xs,
                      ),
                      child: Text(
                        "25%",
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: AppColors.black),
                      ),
                    ),
                  ),

                  // Favourite Icon Button
                  Positioned(
                    top: 0,
                    right: 0,
                    child: AzyroCircularIcon(
                      icon: Iconsax.heart5,
                      color: AppColors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: SizeConstants.spaceBtwItems / 2),

            // Details
            Padding(
              padding: EdgeInsets.only(left: SizeConstants.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  SizedBox(height: SizeConstants.spaceBtwItems / 2),

                  Row(
                    children: [
                      Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const Icon(
                        Iconsax.verify5,
                        color: AppColors.primary,
                        size: SizeConstants.iconXs,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),

            // Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                Padding(padding: EdgeInsets.only(left: SizeConstants.xs),
                  child: ProductPriceText(price: '49.0')
                  ),

                // Add to Cart Button
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(SizeConstants.cardRadiusMd),
                      bottomRight: Radius.circular(
                        SizeConstants.productImageRadius,
                      ),
                    ),
                  ),
                  child: const SizedBox(
                    width: SizeConstants.iconLg * 1.2,
                    height: SizeConstants.iconLg * 1.2,
                    child: Center(
                      child: Icon(Iconsax.add, color: AppColors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
