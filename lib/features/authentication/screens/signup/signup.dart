import 'package:azyro_ecommerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:azyro_ecommerce_app/common/widgets/login_signup/social_buttons.dart';
import 'package:azyro_ecommerce_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/constants/text_strings.dart';
import 'package:azyro_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AzyroHelperFunctions.isDark(context);
    return Scaffold(
      // scaffoldBackgroundColor: dark? AppColors.black: AppColors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SizeConstants.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(AppTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: SizeConstants.spaceBtwSections,),

              // Form
              SignupForm(dark: dark),

              // Divider
              FormDivider(dark: dark, text: AppTexts.orSignUpWith.capitalize!),
              const SizedBox(height: SizeConstants.spaceBtwSections,),

              // Social buttons

             const SocialButtons()

            ],
          ),
         ),
      ),
    );
  }
}
