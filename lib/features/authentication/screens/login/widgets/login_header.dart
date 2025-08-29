import 'package:azyro_ecommerce_app/utils/constants/image_strings.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Image(
            height: 130,
            image: AssetImage(AppImages.lightAppLogo)),
        ),
          Text(AppTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: SizeConstants.sm,),
          Text(AppTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium)
      ],
    );
  }
}