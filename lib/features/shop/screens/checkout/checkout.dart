import 'package:azyro_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:azyro_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/helpers/exports.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AzyroHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AzyroAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SizeConstants.defaultSpace),
          child: Column(
            children: [
              //  Items in cart
              CartItems(showAddRemoveButoons: false),
              SizedBox(height: SizeConstants.spaceBtwSections),

              // Coupon TextField
              AzyroRoundedContainer(
                showBorder: true,
                backgroundColor: isDark ? AppColors.dark : AppColors.white,
                padding: const EdgeInsets.only(
                  top: SizeConstants.sm,
                  bottom: SizeConstants.sm,
                  right: SizeConstants.sm,
                  left: SizeConstants.md,
                ),
                child: Row(
                  children: [
                    Flexible(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Have a Promo CodEnter here!',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    ElevatedButton(onPressed: () {}, child: Text('Apply')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
