import 'package:azyro_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:azyro_ecommerce_app/common/widgets/products/ratings/rating_indicator.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AzyroAppBar(title: Text('Reviews & Ratings'), showBackArrow: true,),

      // Body
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(SizeConstants.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ratings and Reviews are verified and are from people who use the same type of device that you use.'),
            SizedBox(height: SizeConstants.spaceBtwItems,),

            // Overall product Ratings
            const OverallProductRating(),
            AzyroRatingBarIndicator(rating: 4.3),
            Text('11,726', style: Theme.of(context).textTheme.bodySmall,),
            const SizedBox(height: SizeConstants.spaceBtwSections,),

            // User Reviews List
            UserReviewCard(),
            const SizedBox(height: SizeConstants.spaceBtwItems,),
            UserReviewCard(),
            const SizedBox(height: SizeConstants.spaceBtwItems,),
            UserReviewCard(),
            const SizedBox(height: SizeConstants.spaceBtwItems,),
            UserReviewCard()
          ],
        ),),
      ),
    );
  }
}

