import 'package:azyro_ecommerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(labelText: AppTexts.firstName, prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: SizeConstants.spaceBtwInputFields,),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(labelText: AppTexts.lastName, prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(height: SizeConstants.spaceBtwInputFields,),
          // username
          TextFormField(
                  expands: false,
                  decoration: const InputDecoration(labelText: AppTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
                ),
          const SizedBox(height: SizeConstants.spaceBtwInputFields,),
    
          // Email
          TextFormField(
                  expands: false,
                  decoration: const InputDecoration(labelText: AppTexts.email, prefixIcon: Icon(Iconsax.direct)),
                ),
          const SizedBox(height: SizeConstants.spaceBtwInputFields,),
    
          // Phone Number
          TextFormField(
                 
                  decoration: const InputDecoration(labelText: AppTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
                ),
          const SizedBox(height: SizeConstants.spaceBtwInputFields,),
    
          // Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(labelText: AppTexts.password, prefixIcon: Icon(Iconsax.password_check), suffixIcon: Icon(Iconsax.eye_slash)),
            ),
          const SizedBox(height: SizeConstants.spaceBtwInputFields,),
    
          // Teams & Conditions Checkbox
          Row(
            children: [
              SizedBox(child: Checkbox(value: true, onChanged: (value){})),
              const SizedBox(width: SizeConstants.spaceBtwItems,),
              Text.rich(TextSpan(
                children: [
                  TextSpan(text: 'I agree to ', style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: AppTexts.privacyPolicy, style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark? Colors.white: AppColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark? Colors.white: AppColors.primary,
    
                  )),
    
                  TextSpan(text: ' and ', style: Theme.of(context).textTheme.bodySmall),
    
                  TextSpan(text: AppTexts.termsOfUse, style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark? Colors.white: AppColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark? Colors.white: AppColors.primary,
    
                  )),
                ]
              ))
            ],
          ),
          const SizedBox(height: SizeConstants.spaceBtwSections,),
    
          // Signup Button
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=> Get.to(()=>const VerifyEmailScreen()), child: const Text(AppTexts.createAccount)),),

          const SizedBox(height: SizeConstants.spaceBtwSections,)
        ],
      )
    );
  }
}