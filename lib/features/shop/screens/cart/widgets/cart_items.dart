import 'package:azyro_ecommerce_app/common/widgets/products/cart/add_remove_button.dart';
import 'package:azyro_ecommerce_app/common/widgets/products/cart/cart_item.dart';
import 'package:azyro_ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key, this.showAddRemoveButoons = true});

  final bool showAddRemoveButoons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder:
          (_, __) => const SizedBox(height: SizeConstants.spaceBtwSections),
      itemCount: 3,
      itemBuilder:
          (_, index) => Column(
            children: [
              // Single Cart Item
              CartItem(),
              if (showAddRemoveButoons)
                const SizedBox(height: SizeConstants.spaceBtwItems),

              // Add remove button with total price
              if (showAddRemoveButoons)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // Extra Space
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
    );
  }
}
