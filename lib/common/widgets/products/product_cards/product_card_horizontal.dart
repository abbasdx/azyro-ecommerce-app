import 'package:azyro_ecommerce_app/common/styles/shadows.dart';
import 'package:azyro_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:azyro_ecommerce_app/common/widgets/icons/circular_icon.dart';
import 'package:azyro_ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:azyro_ecommerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:azyro_ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:azyro_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/image_strings.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/helpers/exports.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AzyroHelperFunctions.isDarkMode(context);

    return Container(
        width: 314,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          // boxShadow: [AzyroShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(SizeConstants.productImageRadius),
          color: isDark ? AppColors.darkerGrey : AppColors.softGrey,
        ),
        child: Row(
          children: [
            // Thumbnail
            AzyroRoundedContainer(
              height: 120,
              padding: const EdgeInsets.all(SizeConstants.sm),
              backgroundColor: isDark? AppColors.dark:AppColors.white,
              child: Stack(
                children: [
                  // Thumbnail Image
                  SizedBox(height: 120,width: 120, child: RoundedImage(imageUrl: AppImages.productImage1, applyImageRadius: true,)),

                   // Sale Tag
                  Positioned(
                    top: 0,
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

            // Details
            SizedBox(
              width: 172,
              child: Padding(
                padding: EdgeInsets.only(top: SizeConstants.sm, left:SizeConstants.sm),
                child: Column(
                  children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProductTitleText(title: 'Green Nike Half Sleeve Shirt', smallSize: true,),
                        SizedBox(height: SizeConstants.spaceBtwItems/2,),
                
                        BrandTitleWithVerifiedIcon(title: 'Nike',)
                      ],
                    ),

                    const Spacer(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Pricing
                        Flexible(child: ProductPriceText(price: '249')),

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
                    )
                  ],
                ),
              ),
            )
          ],
        ),);
  }
}