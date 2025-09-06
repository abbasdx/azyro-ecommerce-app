import 'package:azyro_ecommerce_app/common/widgets/brands/brand_show_case.dart';
import 'package:azyro_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:azyro_ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:azyro_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:azyro_ecommerce_app/utils/constants/image_strings.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(SizeConstants.defaultSpace),
          child: Column(
            children: [
              // Brands
              const BrandShowcae(
                brandTitle: 'Nike',
                images: [
                  AppImages.productImage1,
                  AppImages.productImage2,
                  AppImages.productImage3,
                ],
              ),
              const BrandShowcae(
                brandTitle: 'Puma',
                brandImage: AppImages.pumaIcon,
                images: [
                  AppImages.pumaShoe1,
                  AppImages.pumaShoe2,
                  AppImages.pumaShoe3,
                ],
              ),
              const SizedBox(height: SizeConstants.spaceBtwItems),

              // Products
              SectionHeading(title: 'You might like', onPressed: () {}),
              const SizedBox(height: SizeConstants.spaceBtwItems),

              AzyroGridLayout(
                itemCount: 6,
                itemBuilder: (_, index) => ProductCardVertical(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
