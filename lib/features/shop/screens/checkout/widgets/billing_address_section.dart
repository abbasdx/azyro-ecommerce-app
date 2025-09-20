import 'package:azyro_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: () {}),
        Text('Abbas Ansari', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: SizeConstants.spaceBtwItems/2),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: SizeConstants.spaceBtwItems),
            Text('+92-317-8859525', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ), // Row
        const SizedBox(height: SizeConstants.spaceBtwItems/2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: SizeConstants.spaceBtwItems),
            Expanded(child: Text('South Liana, Maine 87695, USA', style: Theme.of(context).textTheme.bodyMedium, softWrap: true)),
          ],
        ), // Row
      ],
    );
  }
}