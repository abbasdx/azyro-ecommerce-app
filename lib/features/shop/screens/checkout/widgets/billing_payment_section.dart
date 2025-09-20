import 'package:azyro_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:azyro_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/image_strings.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AzyroHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(height: SizeConstants.spaceBtwItems / 2),
        Row(
          children: [
            AzyroRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? AppColors.light : AppColors.white,
              padding: const EdgeInsets.all(SizeConstants.sm),
              child: Image(
                image: AssetImage(AppImages.paypal),
                fit: BoxFit.contain,
              ),
            ), // TRoundedContainer
            const SizedBox(width: SizeConstants.spaceBtwItems / 2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ), // Row
      ],
    ); // Column
  }
}
