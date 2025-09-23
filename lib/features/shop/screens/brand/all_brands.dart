import 'package:azyro_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:azyro_ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:azyro_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:azyro_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/brand/brand_products.dart';
import 'package:azyro_ecommerce_app/utils/constants/image_strings.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AzyroAppBar(title: Text('Brand'), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(SizeConstants.defaultSpace),
        child: Column(
          children: [
            // Heading
            SectionHeading(title: 'Brands', showActionButton: false,),
            SizedBox(height: SizeConstants.spaceBtwItems,),

            // Brands
            AzyroGridLayout(itemCount: 14, mainAxisExtent: 80,
            itemBuilder: (context,index)=> AzyroBrandCard(onTap: ()=> Get.to(()=>  BrandProducts()), showBorder: true, brandTitle: 'Nike',image: AppImages.nikeIcon,))

          ],
        ),),
      ),
    );
  }
}