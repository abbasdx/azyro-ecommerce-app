import 'package:azyro_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:azyro_ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:azyro_ecommerce_app/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:azyro_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:azyro_ecommerce_app/utils/constants/image_strings.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AzyroAppBar(title: Text('Sports'), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(SizeConstants.defaultSpace),
        child: Column(
          children: [
            // Banner
            RoundedImage(width: double.infinity, imageUrl: AppImages.promoBanner5, applyImageRadius: true,),
            SizedBox(height: SizeConstants.spaceBtwSections,),

            // Sub-Categories
            Column(
              children: [
                // Heading
                SectionHeading(title: 'Sports Shoes', onPressed: (){},),
                SizedBox(height: SizeConstants.spaceBtwItems/2,),
                
                SizedBox(
                  height: 120,
                  child: ListView.separated( itemCount: 4,scrollDirection: Axis.horizontal, 
                  separatorBuilder: (context, index) => const SizedBox(width: SizeConstants.spaceBtwItems,),
                  itemBuilder: (context, index) => const ProductCardHorizontal()),
                )
              ],
            ),

            Column(
              children: [
                // Heading
                SectionHeading(title: 'Sports shirts', onPressed: (){},),
                SizedBox(height: SizeConstants.spaceBtwItems/2,),
                
                SizedBox(
                  height: 120,
                  child: ListView.separated( itemCount: 4,scrollDirection: Axis.horizontal, 
                  separatorBuilder: (context, index) => const SizedBox(width: SizeConstants.spaceBtwItems,),
                  itemBuilder: (context, index) => const ProductCardHorizontal()),
                )
              ],
            ),
            Column(
              children: [
                // Heading
                SectionHeading(title: 'Sports shirts', onPressed: (){},),
                SizedBox(height: SizeConstants.spaceBtwItems/2,),
                
                SizedBox(
                  height: 120,
                  child: ListView.separated( itemCount: 4,scrollDirection: Axis.horizontal, 
                  separatorBuilder: (context, index) => const SizedBox(width: SizeConstants.spaceBtwItems,),
                  itemBuilder: (context, index) => const ProductCardHorizontal()),
                )
              ],
            ),
            Column(
              children: [
                // Heading
                SectionHeading(title: 'Sports shirts', onPressed: (){},),
                SizedBox(height: SizeConstants.spaceBtwItems/2,),
                
                SizedBox(
                  height: 120,
                  child: ListView.separated( itemCount: 4,scrollDirection: Axis.horizontal, 
                  separatorBuilder: (context, index) => const SizedBox(width: SizeConstants.spaceBtwItems,),
                  itemBuilder: (context, index) => const ProductCardHorizontal()),
                )
              ],
            )
          ],
        ),
        ),
      ),
    );
  }
}