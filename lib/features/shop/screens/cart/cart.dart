import 'package:azyro_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:azyro_ecommerce_app/common/widgets/products/cart/add_remove_button.dart';
import 'package:azyro_ecommerce_app/common/widgets/products/cart/cart_item.dart';
import 'package:azyro_ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

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
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder:
              (_, __) => const SizedBox(height: SizeConstants.spaceBtwSections),
          itemCount: 12,
          itemBuilder:
              (_, index) => Column(
                children: [
                  CartItem(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 70),
                          // Add Remove Buttons
                          ProductQuantityWithAddRemoveButton(),
                        ],
                      ),
                      ProductPriceText(price: '149'),
                    ],
                  ),
                ],
              ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: SizeConstants.defaultSpace, right: SizeConstants.defaultSpace, bottom: SizeConstants.defaultSpace, top: SizeConstants.defaultSpace/2.5),
        child: ElevatedButton(onPressed: () {}, child: Text('Checkout \$149')),
      ),
    );
  }
}
