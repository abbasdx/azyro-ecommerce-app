import 'package:azyro_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:azyro_ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:azyro_ecommerce_app/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:azyro_ecommerce_app/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:azyro_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:azyro_ecommerce_app/features/personalization/screens/address/address.dart';
import 'package:azyro_ecommerce_app/features/personalization/screens/profile/profile.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/order/order.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  // AppBar
                  AzyroAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: AppColors.white),
                    ),
                  ),
                  const SizedBox(height: SizeConstants.spaceBtwSections/4),

                  // User Profile Card
                  UserProfileTile(onPressed: ()=> Get.to(()=> const ProfileScreen()),),
                  const SizedBox(height: SizeConstants.spaceBtwSections,)
                ],
              ),
            ),

            // Body
            Padding(padding: const EdgeInsets.all(SizeConstants.defaultSpace),
            child: Column(
              children: [
                // Account Settings
                SectionHeading(title: 'Account Settings', showActionButton: false),
                SizedBox(height: SizeConstants.spaceBtwItems),

                SettingsMenuTile(icon: Iconsax.safe_home, title: 'My Addresses', subTitle: 'Set shopping delivery address', onTap: ()=> Get.to(()=>const UserAddressScreen()),),
                SettingsMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Add, remove products and move to checkout'),
                SettingsMenuTile(icon: Iconsax.bag_tick, title: 'My Orders', subTitle: 'In-progress and Completed Orders',  onTap: ()=> Get.to(()=>const OrderScreen())),
                SettingsMenuTile(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Withdraw balance to registered bank account'),
                SettingsMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List of all the discounted coupons'),
                SettingsMenuTile(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Set any kind of notification message'),
                SettingsMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data usage and connected accounts'),

                // App Settings
                SizedBox(height: SizeConstants.spaceBtwSections),
                SectionHeading(title: 'App Settings', showActionButton: false),
                SizedBox(height: SizeConstants.spaceBtwItems),

                SettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload Data to your Cloud Firebase'),
                SettingsMenuTile(icon: Iconsax.location, title: 'Geolocation', subTitle: 'Set recommendation based on location', trailing: Switch(value: false, onChanged: (value){}),),
                SettingsMenuTile(icon: Iconsax.security_user, title: 'Safe Mode', subTitle: 'Search result is safe for all ages', trailing: Switch(value: true, onChanged: (value){}),),
                SettingsMenuTile(icon: Iconsax.location, title: 'HD Image Quality', subTitle: 'Set image quality to be seen', trailing: Switch(value: false, onChanged: (value){}),),
                const SizedBox(height: SizeConstants.spaceBtwSections,),

                // Logout Button
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),
                ),
                const SizedBox(height: SizeConstants.spaceBtwSections,)

              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}
