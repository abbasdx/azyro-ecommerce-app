import 'package:azyro_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image Slider
            ProductImageSlider(),

            // Product Details
            Padding(padding: EdgeInsets.only(right: SizeConstants.defaultSpace, left: SizeConstants.defaultSpace, bottom: SizeConstants.defaultSpace),
            child: Column(
              children: [
                // Rating and Share
                RatingAndShare(),

                // Price, Title, Stock & Brand
                ProductMetaData(),

                // Attributes
                ProductAttributes(),
                const SizedBox(height: SizeConstants.spaceBtwSections),

                // Checkout Button
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text('Checkout'))),
                const SizedBox(height: SizeConstants.spaceBtwSections),

                // Description
                SectionHeading(title: 'Description', showActionButton: false,),
                const SizedBox(height: SizeConstants.spaceBtwItems),
                ReadMoreText(
                  'Experience all-day comfort and style with the Nike Air Max Revolution. Featuring a breathable mesh upper, responsive Nike Air cushioning, and a durable rubber outsole, these shoes deliver lightweight support, superior shock absorption, and excellent grip on any surface. The sleek, modern design with the iconic Swoosh makes them perfect for running, training, or casual wear.',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Shoe more',
                  trimExpandedText: 'Less',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                ),

                // Reviews
                const SizedBox(height: SizeConstants.spaceBtwItems/2,),
                Divider(),
                const SizedBox(height: SizeConstants.spaceBtwItems/1.5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SectionHeading(title: 'Reviews (199)', showActionButton: false,),
                    IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right4, size: 18,))
                  ],
                ),
                const SizedBox(height: SizeConstants.spaceBtwSections,),
              ],
            ),)
          ],
        ),
      ),
    );
  }
}

