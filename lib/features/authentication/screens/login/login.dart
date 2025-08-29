import 'package:azyro_ecommerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:azyro_ecommerce_app/common/widgets/login_signup/social_buttons.dart';
import 'package:azyro_ecommerce_app/common/widgets/styles/spacing_styles.dart';
import 'package:azyro_ecommerce_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:azyro_ecommerce_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/constants/text_strings.dart';
import 'package:azyro_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AzyroHelperFunctions.isDarkMode(context);
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AzyroSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title, Subtitle
              LoginHeader(),

              /// Form 
              LoginForm(),

              // Divider
              FormDivider(dark: dark, text: AppTexts.orSignInWith.capitalize!),

              const SizedBox(height: SizeConstants.spaceBtwSections,),

              // Footer
              SocialButtons(),
            ],
          ),
          ),
      ),
    );
  }
}
