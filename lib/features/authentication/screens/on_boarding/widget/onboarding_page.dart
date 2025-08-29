import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:azyro_ecommerce_app/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key, required this.image, required this.title, required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {

    final dark = AzyroHelperFunctions.isDark(context);
    return Padding(
      padding: const EdgeInsets.all(SizeConstants.defaultSpace),
      child: Column(
        children: [
          Image(
            width: AzyroHelperFunctions.screenWidth() * 0.8,
            height: AzyroHelperFunctions.screenHeight() * 0.6,
            image: AssetImage(image)
            ),
            Text(title, style: dark? AzyroTextTheme.darkTextTheme.headlineMedium: AzyroTextTheme.lightTextTheme.headlineMedium,
            textAlign: TextAlign.center,),
      
            const SizedBox(height: SizeConstants.spaceBtwItems,),
      
            Text(subTitle, style: dark? AzyroTextTheme.darkTextTheme.headlineSmall: AzyroTextTheme.lightTextTheme.headlineSmall,
            textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}