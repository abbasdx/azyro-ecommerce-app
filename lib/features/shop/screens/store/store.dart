import 'package:azyro_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:azyro_ecommerce_app/common/widgets/appbar/tabbar.dart';
import 'package:azyro_ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:azyro_ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:azyro_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:azyro_ecommerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:azyro_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/store/widgets/category_tab.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/image_strings.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AzyroHelperFunctions.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AzyroAppBar(
          // backgroundColor: isDark? AppColors.black : AppColors.white,
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            AzyroCartCounterIcon(
              onPressed: () {},
              iconColor: isDark ? AppColors.white : AppColors.dark,
            ),
          ],
        ),

        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor:
                    AzyroHelperFunctions.isDarkMode(context)
                        ? AppColors.black
                        : AppColors.white,
                expandedHeight: 420,

                flexibleSpace: Padding(
                  padding: EdgeInsets.all(SizeConstants.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      // Search Bar
                      const SizedBox(height: SizeConstants.spaceBtwItems),
                      const AzyroSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: SizeConstants.spaceBtwSections),

                      // Featured Brands
                      SectionHeading(
                        title: 'Featured Brands',
                        onPressed: () {},
                      ),
                      const SizedBox(height: SizeConstants.spaceBtwItems),

                      // Brands Grid
                      AzyroGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return const AzyroBrandCard(
                            brandTitle: 'Puma',
                            image: AppImages.pumaIcon,
                            showBorder: true,
                          );
                        },
                      ),
                    ],
                  ),
                ),

                // Tabs
                bottom: AzyroTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                  ],
                ),
              ),
            ];
          },

          // Body
          body: TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
