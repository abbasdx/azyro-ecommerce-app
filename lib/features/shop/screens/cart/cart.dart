import 'package:azyro_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/checkout/checkout.dart'; 
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AzyroAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal:  SizeConstants.defaultSpace),
        child: CartItems(),
      ),
      // Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: SizeConstants.defaultSpace, right: SizeConstants.defaultSpace, bottom: SizeConstants.defaultSpace, top: SizeConstants.defaultSpace/2.5),
        child: ElevatedButton(onPressed: ()=> Get.to(()=> CheckoutScreen()), child: Text('Checkout \$149')),
      ),
    );
  }
}

