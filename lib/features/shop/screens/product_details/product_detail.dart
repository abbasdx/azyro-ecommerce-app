import 'package:azyro_ecommerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {

    

    return Scaffold(
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
                ProductMetaData()

                // Attributes
                // Checkout Button
                // Description
                // Reviews
              ],
            ),)


          ],
        ),
      ),
    );
  }
}

