import 'package:azyro_ecommerce_app/features/authentication/controllers/on_boarding_controller.dart';
import 'package:azyro_ecommerce_app/features/authentication/screens/on_boarding/widget/onboarding_dot_navigation.dart';
import 'package:azyro_ecommerce_app/features/authentication/screens/on_boarding/widget/onboarding_next_button.dart';
import 'package:azyro_ecommerce_app/features/authentication/screens/on_boarding/widget/onboarding_page.dart';
import 'package:azyro_ecommerce_app/features/authentication/screens/on_boarding/widget/onboarding_skip.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/image_strings.dart';
import 'package:azyro_ecommerce_app/utils/constants/text_strings.dart';
import 'package:azyro_ecommerce_app/utils/helpers/exports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    final bool isDark = AzyroHelperFunctions.isDark(context);

    return Scaffold(
      backgroundColor: isDark? AppColors.black: AppColors.textWhite,
      
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,

            children: const[
              OnboardingPage(
                image: AppImages.onBoardingImage1, 
                title: AppTexts.tOnBoardingTitle1, 
                subTitle: AppTexts.tOnBoardingSubTitle1,
                ),
              
              OnboardingPage(
                image: AppImages.onBoardingImage2, 
                title: AppTexts.tOnBoardingTitle2, 
                subTitle: AppTexts.tOnBoardingSubTitle2,
                ),

              OnboardingPage(
                image: AppImages.onBoardingImage3, 
                title: AppTexts.tOnBoardingTitle3, 
                subTitle: AppTexts.tOnBoardingSubTitle3,
                ),
            ],
          ),

          const OnBoardingSkip(),

          OnBoardingDotNavigation(),

          OnBoardingNextButton()

        ],
      ),
    );
  }
}

