import 'package:azyro_ecommerce_app/common/widgets/chips/choice_chip.dart';
import 'package:azyro_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:azyro_ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:azyro_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:azyro_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AzyroHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // Selected Attribute Pricing and Description
        AzyroRoundedContainer(
          padding: EdgeInsets.all(SizeConstants.md),
          backgroundColor: isDark ? AppColors.darkerGrey : AppColors.grey,
          child: Column(
            children: [
              // Title, Price and Stock Status
              Row(
                children: [
                  SectionHeading(title: 'Variations', showActionButton: false),
                  SizedBox(width: SizeConstants.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ProductTitleText(title: 'Price : ', smallSize: true),
                          SizedBox(width: SizeConstants.spaceBtwItems),
                          // Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(width: SizeConstants.spaceBtwItems),
                          // Sale Price
                          const ProductPriceText(price: '20'),
                        ],
                      ),
                      Row(
                        children: [
                          ProductTitleText(title: 'Stock : ', smallSize: true),
                          Text(
                            ' In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              // Variation description
              ProductTitleText(
                title:
                    'This is the Description of the Product and it can go upto max 4 lines',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: SizeConstants.spaceBtwItems),

        // Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeading(title: 'Color', showActionButton: false),
            const SizedBox(height: SizeConstants.spaceBtwItems / 2),
            Wrap(
              children: [
                AzyroChoiceChip(
                  text: 'Blue',
                  selected: false,
                  onSelected: (value) {},
                ),
                AzyroChoiceChip(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                AzyroChoiceChip(
                  text: 'Red',
                  selected: false,
                  onSelected: (value) {},
                ),
                AzyroChoiceChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeading(title: 'Size', showActionButton: false),
            const SizedBox(height: SizeConstants.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                AzyroChoiceChip(
                  text: 'EU 34',
                  selected: true,
                  onSelected: (value) {},
                ),
                AzyroChoiceChip(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                AzyroChoiceChip(
                  text: 'EU 38',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
