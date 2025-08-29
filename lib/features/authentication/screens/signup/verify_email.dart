import 'package:azyro_ecommerce_app/common/widgets/login_signup/success_screen/success_screen.dart';
import 'package:azyro_ecommerce_app/features/authentication/screens/login/login.dart';
import 'package:azyro_ecommerce_app/utils/constants/image_strings.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/constants/text_strings.dart';
import 'package:azyro_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.offAll(()=>const LoginScreen()), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SizeConstants.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(image: AssetImage(AppImages.deliveredEmailIllustration), width: AzyroHelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: SizeConstants.spaceBtwSections,),

              // Title & Subtitle
              Text(AppTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: SizeConstants.spaceBtwItems,),

              Text('suppor@azyro.com', style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
              const SizedBox(height: SizeConstants.spaceBtwItems,),

              Text(AppTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: SizeConstants.spaceBtwSections,),

              // Buttons
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=>Get.to(()=> SuccessScreen(
                image: AppImages.staticSuccessIllustration,
                title: AppTexts.yourAccountCreatedTitle,
                subTitle: AppTexts.yourAccountCreatedSubTitle,
                onPressed: () => Get.to(()=>LoginScreen()),

              )), child: Text(AppTexts.tContinue)),),
              const SizedBox(height: SizeConstants.spaceBtwItems,),

              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: Text(AppTexts.resendEmail)),),
              // const SizedBox(height: SizeConstants.spaceBtwItems,),

            ],
          ),

          ),
      ),
    );
  }
}