import 'package:azyro_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/helpers/exports.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final isDark = AzyroHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.all(SizeConstants.defaultSpace / 1.5),
      child: AzyroRoundedContainer(
        padding: EdgeInsets.all(SizeConstants.spaceBtwItems),
        width: double.infinity,
        showBorder: true,
        backgroundColor:
            selectedAddress
                ? AppColors.primary.withOpacity(0.5)
                : Colors.transparent,
        borderColor:
            selectedAddress
                ? Colors.transparent
                : isDark
                ? AppColors.darkerGrey
                : AppColors.grey,
        child: Stack(
          children: [
            Positioned(
              right: 5,
              top: 0,
              child: Icon(
                selectedAddress ? Iconsax.tick_circle : null,
                color:
                    selectedAddress
                        ? isDark
                            ? AppColors.light
                            : AppColors.dark.withOpacity(0.8)
                        : null,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Alice Joe',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: SizeConstants.sm / 2),
                const Text(
                  '(+123) 456 7896',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: SizeConstants.sm / 2),
                const Text(
                  '25639 Timmy Coves, South Liana, Maine, 87665, USA',
                  softWrap: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
