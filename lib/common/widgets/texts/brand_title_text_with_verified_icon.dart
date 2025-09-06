import 'package:azyro_ecommerce_app/common/widgets/texts/brand_title_text.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/enums.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BrandTitleWithVerifiedIcon extends StatelessWidget {
  const BrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = AppColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes? brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BrandTitleText(
          title: title,
          color: textColor,
          maxLines: maxLines,
          textAlign: textAlign,
          brandTextSize: brandTextSize,
        ),
        const SizedBox(width: SizeConstants.xs),
         Icon(
          Iconsax.verify5,
          color: iconColor,
          size: SizeConstants.iconXs,
        ),
      ],
    );
  }
}
