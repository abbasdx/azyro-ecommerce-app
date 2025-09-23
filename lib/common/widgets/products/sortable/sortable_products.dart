import 'package:azyro_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:azyro_ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Dropdown
        DropdownButtonFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value){},
          items: [
            'Name', 'Higher Price', 'Lower Price', 'Newest', 'Populrity'
          ].map((option)=> DropdownMenuItem(value: option, child: Text(option))).toList(),
        ),
        const SizedBox(height: SizeConstants.spaceBtwSections,),
    
        // Products
        AzyroGridLayout(itemCount: 14, itemBuilder: (_, index)=> const ProductCardVertical())
      ],
    );
  }
}