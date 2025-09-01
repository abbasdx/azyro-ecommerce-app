import 'package:azyro_ecommerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:azyro_ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:azyro_ecommerce_app/features/shop/controllers/home_controller.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AzyroPromoSlider extends StatelessWidget {
  const AzyroPromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1.05,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners.map((url)=> RoundedImage(imageUrl: url),).toList()
        ),
        const SizedBox(height: SizeConstants.spaceBtwItems),
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banners.length; i++)
                CircularContainer(
                  backgroundColor: controller.carousalCurrentIndex.value == i ? AppColors.primary : AppColors.grey,
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
