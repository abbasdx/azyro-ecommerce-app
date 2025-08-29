import 'package:azyro_ecommerce_app/features/authentication/controllers/on_boarding_controller.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/device/device_utility.dart';
import 'package:azyro_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {    
    
    final dark = AzyroHelperFunctions.isDark(context);

    return Positioned(
      right: SizeConstants.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(onPressed: ()=> OnBoardingController.instance.nextPage(), 
      style: ElevatedButton.styleFrom(shape: CircleBorder(), 
      backgroundColor: dark? AppColors.primary : Colors.black
      ),
      child: const Icon(Iconsax.arrow_right_3))
      );
  }
  
}

