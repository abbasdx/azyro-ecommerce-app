import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AzyroCartCounterIcon extends StatelessWidget {
  const AzyroCartCounterIcon({
    super.key, required this.iconColor , required this.onPressed,
  });

  final Color iconColor;
  final VoidCallback onPressed;
  

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: (){}, icon: Icon(Iconsax.shopping_bag, color: AppColors.white,)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: AppColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('2',style: Theme.of(context).textTheme.labelLarge!.apply(color: AppColors.white, fontSizeFactor: 0.8),),
            ),
          ),
        )
      ],
    );
  }
}

