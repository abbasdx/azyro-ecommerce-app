import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class AzyroRatingBarIndicator extends StatelessWidget {
  const AzyroRatingBarIndicator({
    super.key, required this.rating,
  });
  
  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: 4.5,
      itemSize: 20,
      unratedColor: AppColors.grey,
      itemBuilder: (_, __)=> Icon(Iconsax.star1, color: AppColors.primary,),
    );
  }
}
