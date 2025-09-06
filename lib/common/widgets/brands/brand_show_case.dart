
import 'package:azyro_ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:azyro_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/image_strings.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BrandShowcae extends StatelessWidget {
  const BrandShowcae({
    super.key, required this.images, this.brandTitle = 'Nike', this.brandImage = AppImages.nikeIcon,
  });

  final List<String> images;
  final String brandTitle;
  final String brandImage;


  @override
  Widget build(BuildContext context) {
    final isDark = AzyroHelperFunctions.isDarkMode(context);
    return AzyroRoundedContainer(
      showBorder: true,
      borderColor: AppColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(SizeConstants.md),
      margin: const EdgeInsets.only(bottom: SizeConstants.spaceBtwItems),
      child: Column(
        children: [
          // Brand with product count
          AzyroBrandCard(brandTitle: brandTitle,image: brandImage , showBorder: false),
          const SizedBox(height: SizeConstants.spaceBtwItems,),
          
          // Brands top 3 products images
          Row(children: images.map((image) => brandTopProductImageWidget(image, context)).toList(),)
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context){
    return Expanded(
      child: AzyroRoundedContainer(
         height: 100,
                  backgroundColor: AzyroHelperFunctions.isDarkMode(context)? AppColors.darkerGrey: AppColors.light,
                  margin: const EdgeInsets.symmetric(horizontal: SizeConstants.xs),
                  padding: const EdgeInsets.all(SizeConstants.md),
                  child: Image( fit: BoxFit.contain, image: AssetImage(image)),
      )
    );

  }
}
