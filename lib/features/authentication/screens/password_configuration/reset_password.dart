import 'package:azyro_ecommerce_app/utils/constants/image_strings.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/constants/text_strings.dart';
import 'package:azyro_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SizeConstants.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(image: AssetImage(AppImages.checkEmail), width: AzyroHelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: SizeConstants.spaceBtwSections,),

              // Title & Subtitle
              Text(AppTexts.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: SizeConstants.spaceBtwItems,),

              Text(AppTexts.changeYourPasswordSubtitle, style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: SizeConstants.spaceBtwSections,),

              // Buttons
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text(AppTexts.done)),),
              const SizedBox(height: SizeConstants.spaceBtwItems,),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: Text(AppTexts.resendEmail)),),

            ],
          ),
        ),
      ),
    );
  }
}