import 'package:azyro_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AzyroCouponCode extends StatelessWidget {
  const AzyroCouponCode({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AzyroHelperFunctions.isDarkMode(context);
    return AzyroRoundedContainer(
      showBorder: true,
      backgroundColor: isDark ? AppColors.dark : AppColors.white,
      padding: const EdgeInsets.only(
        top: SizeConstants.sm,
        bottom: SizeConstants.sm,
        right: SizeConstants.sm,
        left: SizeConstants.md,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a Promo Code, Enter here!',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor:
                  isDark
                      ? AppColors.white.withOpacity(0.5)
                      : AppColors.dark.withOpacity(0.5),
              backgroundColor: Colors.grey.withOpacity(0.2),
              side: BorderSide(color: Colors.grey.withOpacity(0.1)),
            ),
            child: Text('Apply'),
          ),
        ],
      ),
    );
  }
}
