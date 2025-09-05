import 'package:azyro_ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:azyro_ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:azyro_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:azyro_ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:azyro_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/image_strings.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  // App Bar
                  const HomeAppBar(),
                  const SizedBox(height: SizeConstants.spaceBtwSections),

                  // Search Container
                  AzyroSearchContainer(text: 'Search in Store'),
                  const SizedBox(height: SizeConstants.spaceBtwSections),

                  // Categories
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: SizeConstants.defaultSpace,
                    ),
                    child: Column(
                      children: [
                        // Section Heading
                        const SectionHeading(
                          title: 'Popular Categories',
                          textColor: AppColors.white,
                          showActionButton: false,
                        ),
                        const SizedBox(height: SizeConstants.spaceBtwItems),

                        // Categories List
                        const AzyroHomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //  Body
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: SizeConstants.defaultSpace, vertical: SizeConstants.sm),
              // Banner
              child: Column(
                children: [

                  // Promo Slider
                  AzyroPromoSlider(banners: [
                    AppImages.promoBanner1,
                    AppImages.promoBanner2,
                    AppImages.promoBanner3,
                    AppImages.promoBanner4,
                    AppImages.promoBanner5,
                    AppImages.promoBanner6
                  ],),
                  const SizedBox(height: SizeConstants.spaceBtwSections,),

                  // Heading
                  SectionHeading(title: 'Popular Products', onPressed: (){}),

                  // Popular Products
                  AzyroGridLayout(itemCount: 6, itemBuilder: (_, index ) => ProductCardVertical()), // GridView.builder
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
