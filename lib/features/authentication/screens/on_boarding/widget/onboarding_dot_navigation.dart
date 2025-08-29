import 'package:azyro_ecommerce_app/features/authentication/controllers/on_boarding_controller.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/device/device_utility.dart';
import 'package:azyro_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = AzyroHelperFunctions.isDark(context);

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() +25,
      left: SizeConstants.defaultSpace,
      child: SmoothPageIndicator(
      controller: controller.pageController, 
      onDotClicked: controller.dotNavigationClick,
      count: 3,
      effect: ExpandingDotsEffect(activeDotColor: dark? AppColors.lightGrey : AppColors.dark, dotHeight: 6),)
      );
  }
}

