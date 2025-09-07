import 'package:azyro_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:azyro_ecommerce_app/common/widgets/icons/circular_icon.dart';
import 'package:azyro_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:azyro_ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/home/home.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AzyroAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          AzyroCircularIcon(icon: Iconsax.add, onPressed: ()=> Get.to(()=> const HomeScreen()),)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(SizeConstants.defaultSpace),
        child: Column(
          children: [
            AzyroGridLayout(itemCount: 8, itemBuilder: (_, index)=> const ProductCardVertical())
          ],
        ),
        ),
      ),
    );
  }
}