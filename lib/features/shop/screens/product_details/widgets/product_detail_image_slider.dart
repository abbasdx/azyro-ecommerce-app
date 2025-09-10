import 'package:azyro_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:azyro_ecommerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:azyro_ecommerce_app/common/widgets/icons/circular_icon.dart';
import 'package:azyro_ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/image_strings.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {

    final isDark = AzyroHelperFunctions.isDarkMode(context);

    return CurvedEdgesWidget(
      child: Container(
        color: isDark? AppColors.darkerGrey: AppColors.light,
        child: Stack(children: [
          // Main Large Image
          SizedBox(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(SizeConstants.productImageRadius * 2),
              child: Center(child: Image(image: AssetImage(AppImages.productImage1))),
            ),
          ),
    
          // Image Slider
          Positioned(
            right: 0,
            bottom: 30,
            left: SizeConstants.defaultSpace,
            child: SizedBox(
              height: 80,
              child: ListView.separated(separatorBuilder: (_, __)=> const SizedBox(width: SizeConstants.spaceBtwItems,), itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index)=> RoundedImage(
                width: 80,
                backgroundColor: isDark? AppColors.dark: AppColors.white,
                border: Border.all(color: AppColors.primary),
                padding: const EdgeInsets.all(SizeConstants.sm),
                imageUrl: AppImages.pumaShoe1),),
            ),
          ),
    
          AzyroAppBar(showBackArrow: true,
          actions: [
            AzyroCircularIcon(icon: Iconsax.heart5, color: Colors.red,)
          ],)
          
        ],),
      ),
    );
  }
}