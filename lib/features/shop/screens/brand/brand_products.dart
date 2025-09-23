import 'package:azyro_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:azyro_ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:azyro_ecommerce_app/common/widgets/products/sortable/sortable_products.dart';
import 'package:azyro_ecommerce_app/utils/constants/image_strings.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AzyroAppBar(title: Text('Nike'),),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(SizeConstants.defaultSpace),
        child: Column(
          children: [
            // Brand Detail
            AzyroBrandCard(showBorder: true, brandTitle: 'Nike', image: AppImages.nikeIcon),
            SizedBox(height: SizeConstants.spaceBtwSections,),

            SortableProducts()
          ],
        ),),
      ),
    );
  }
}