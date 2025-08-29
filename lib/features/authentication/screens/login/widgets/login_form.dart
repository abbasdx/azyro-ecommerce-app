import 'package:azyro_ecommerce_app/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:azyro_ecommerce_app/features/authentication/screens/signup/signup.dart';
import 'package:azyro_ecommerce_app/navigation_menu.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/constants/text_strings.dart';
import 'package:azyro_ecommerce_app/utils/helpers/exports.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = AzyroHelperFunctions.isDark(context);

    return Form(child: Padding(
      padding: const EdgeInsets.symmetric(vertical: SizeConstants.spaceBtwSections),
      child: Column(
        children: [
      
          // Email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: AppTexts.email,
            ),
          ),
          const SizedBox(height: SizeConstants.spaceBtwInputFields,),
      
          // Password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: AppTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
      
         const SizedBox(height: SizeConstants.spaceBtwInputFields/2,),
      
        //  remeber me & forgot password
      
      
        // Remember me
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(value: true, onChanged: (value){}),
                const Text(AppTexts.tRememberMe)
            
              ],
            ),
      
            // Forgot password
              TextButton(onPressed: ()=> Get.to(()=> const ForgetPassword()), 
              child: Text(AppTexts.tForgetPassword)),
      
          ],
        ),
      
        const SizedBox(height: SizeConstants.spaceBtwSections,),
      
        // Sign In Button
        SizedBox(width: double.infinity,  child: ElevatedButton(onPressed: ()=>Get.to(()=>const NavigationMenu()), child: const Text("Sign In"))),
        const SizedBox(height: SizeConstants.spaceBtwItems,),
      
        // Create Account Button
        SizedBox(width: double.infinity,  child: OutlinedButton(onPressed:()=> Get.to(()=>const SignupScreen()), child: const Text("Create Account"))),

        ],
      ),
    ) 
    );
  }
}
