import 'package:azyro_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:azyro_ecommerce_app/common/widgets/products/ratings/rating_indicator.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/image_strings.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/helpers/exports.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AzyroHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage(AppImages.userProfileImage1),),
                const SizedBox(width: SizeConstants.spaceBtwItems,),
                Text('Alice Joe', style: Theme.of(context).textTheme.titleLarge,),
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: SizeConstants.spaceBtwItems,),

        // Review
        // Review
        Row(
          children: [
            AzyroRatingBarIndicator(rating: 4),
            SizedBox(width: SizeConstants.spaceBtwItems),
            Text('01 Nov, 2023', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: SizeConstants.spaceBtwItems),
        const ReadMoreText(
          'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.primary),
        ),
        SizedBox(height: SizeConstants.spaceBtwItems),

        // Company Review
        AzyroRoundedContainer(
          backgroundColor: isDark? AppColors.darkerGrey: AppColors.grey,
          child: Padding(padding: EdgeInsets.all(SizeConstants.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Azyro', style: Theme.of(context).textTheme.titleLarge,),
                  Text('14 Sep, 2025', style: Theme.of(context).textTheme.bodyMedium,),
                ],
              ),
              SizedBox(height: SizeConstants.spaceBtwItems),
              const ReadMoreText(
                'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimExpandedText: ' show less',
                trimCollapsedText: ' show more',
                moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.primary),
                lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.primary),
              ),
              SizedBox(height: SizeConstants.spaceBtwItems),
            ],
          ),
          ),
        )
      ],
    );
  }
}