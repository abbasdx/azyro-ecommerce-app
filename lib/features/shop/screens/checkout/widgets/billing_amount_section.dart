import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         // Subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
          Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium,),
          Text('\$250', style: Theme.of(context).textTheme.bodyMedium,),
         ],
        ),
         const SizedBox(height: SizeConstants.spaceBtwItems/2),

        //  Shipping Fee
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
          Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium,),
          Text('\$5.0', style: Theme.of(context).textTheme.labelLarge,),
         ],
        ),
         const SizedBox(height: SizeConstants.spaceBtwItems/2),

        //  Tax fee
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
          Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium,),
          Text('\$6.0', style: Theme.of(context).textTheme.bodyMedium,),
         ],
        ),
         const SizedBox(height: SizeConstants.spaceBtwItems/2),

        //  Order Total
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
          Text('Order Total', style: Theme.of(context).textTheme.bodyMedium,),
          Text('\$261', style: Theme.of(context).textTheme.titleMedium,),
         ],
        ),
         const SizedBox(height: SizeConstants.spaceBtwItems/2),
      ],
    );
  }
}