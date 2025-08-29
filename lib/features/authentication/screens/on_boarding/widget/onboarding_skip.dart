import 'package:azyro_ecommerce_app/features/authentication/controllers/on_boarding_controller.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return Positioned(top:TDeviceUtils.getAppBarHeight(), right: SizeConstants.defaultSpace,child:  TextButton(style: TextButton.styleFrom(foregroundColor: AppColors.primary), onPressed: ()=> OnBoardingController.instance.skipPage(), child: const Text('Skip')));
  }
}
