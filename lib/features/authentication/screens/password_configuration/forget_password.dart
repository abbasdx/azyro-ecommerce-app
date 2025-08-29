import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:azyro_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(SizeConstants.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headings
            Text(AppTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium ),
            const SizedBox(height: SizeConstants.spaceBtwItems,),

            Text(AppTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium ),
            const SizedBox(height: SizeConstants.spaceBtwSections * 2,),

            // Text Feilds
            TextFormField(
              decoration: const InputDecoration(
                labelText:  AppTexts.email,
                prefixIcon: Icon(Iconsax.direct_right)
              ),
            ),
            const SizedBox(height: SizeConstants.spaceBtwSections),

            // Submit Button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=>Get.off(()=>ResetPassword()), child: const Text(AppTexts.submit) ))

          ],
        )
        
      )
    );
  }
}