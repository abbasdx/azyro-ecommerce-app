import 'package:azyro_ecommerce_app/common/widgets/styles/spacing_styles.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/constants/text_strings.dart';
import 'package:azyro_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AzyroSpacingStyle.paddingWithAppBarHeight *2,
          child: Column(
            children: [
              // Image
              Image(image: AssetImage(image), width: AzyroHelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: SizeConstants.spaceBtwSections,),

              // Title & Subtitle
              Text(title, style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: SizeConstants.spaceBtwItems,),

              Text(subTitle, style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: SizeConstants.spaceBtwSections,),

              // Buttons
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: onPressed, child: Text(AppTexts.tContinue)),),
            ],
          ),
        ),
      ),
    );
  }
}