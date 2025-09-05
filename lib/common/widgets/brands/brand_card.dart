import 'package:azyro_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:azyro_ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:azyro_ecommerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/enums.dart';
import 'package:azyro_ecommerce_app/utils/constants/image_strings.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AzyroBrandCard extends StatelessWidget {
  const AzyroBrandCard({super.key, required this.showBorder, this.onTap});
  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AzyroRoundedContainer(
        padding: EdgeInsets.all(SizeConstants.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            // Icon
            Flexible(
              child: CircularImage(
                isNetworkImage: false,
                image: AppImages.nikeIcon,
                backgroundColor: Colors.transparent,
                overlayColor:
                    AzyroHelperFunctions.isDarkMode(context)
                        ? AppColors.white
                        : AppColors.black,
              ),
            ),
            const SizedBox(width: SizeConstants.spaceBtwItems / 2),

            // Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 Products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
