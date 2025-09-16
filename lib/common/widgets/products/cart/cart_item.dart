import 'package:azyro_ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:azyro_ecommerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:azyro_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/image_strings.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AzyroHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        // Image
        RoundedImage(
          imageUrl: AppImages.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(SizeConstants.sm),
          backgroundColor: isDark ? AppColors.darkerGrey : AppColors.light,
        ),
        const SizedBox(width: SizeConstants.spaceBtwItems),

        // Title, Price & Sizes
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleWithVerifiedIcon(title: 'Nike'),
              const Flexible(
                child: ProductTitleText(
                  title: 'Black Sports shoes',
                  maxLines: 1,
                ),
              ),
              // Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Green ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Size ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'UK 08 ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ), // TextSpan
            ],
          ),
        ),
      ],
    );
  }
}
