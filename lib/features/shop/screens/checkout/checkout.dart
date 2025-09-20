import 'package:azyro_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:azyro_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:azyro_ecommerce_app/common/widgets/login_signup/success_screen/success_screen.dart';
import 'package:azyro_ecommerce_app/common/widgets/products/cart/coupon_widget.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:azyro_ecommerce_app/navigation_menu.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/image_strings.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:azyro_ecommerce_app/utils/helpers/exports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
              AzyroCouponCode(),
              const SizedBox(height: SizeConstants.spaceBtwSections),

              // Billing Section
              AzyroRoundedContainer(
                showBorder: true,
                padding: EdgeInsets.all(SizeConstants.md),
                backgroundColor: isDark ? AppColors.black : AppColors.white,
                child: Column(
                  children: [
                    // Pricing
                    BillingAmountSection(),
                    const SizedBox(height: SizeConstants.spaceBtwItems),

                    // Divider
                    Divider(),
                    const SizedBox(height: SizeConstants.spaceBtwItems),
                    // Payment Method
                    BillingPaymentSection(),
                    const SizedBox(height: SizeConstants.spaceBtwItems),
                    // Address
                    BillingAddressSection(),
                    const SizedBox(height: SizeConstants.spaceBtwItems),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          left: SizeConstants.defaultSpace,
          right: SizeConstants.defaultSpace,
          bottom: SizeConstants.defaultSpace,
          top: SizeConstants.defaultSpace / 2.5,
        ),
        child: ElevatedButton(
          onPressed:
              () => Get.to(
                () => SuccessScreen(
                  image: AppImages.paymentSuccessIcon,
                  title: 'Payment Success!',
                  subTitle: 'Your item will be shipped soon!',
                  onPressed: () => Get.offAll(() => const NavigationMenu()),
                ),
              ),
          child: Text('Checkout \$149'),
        ),
      ),
    );
  }
}
