import 'package:azyro_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:azyro_ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:azyro_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:azyro_ecommerce_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:azyro_ecommerce_app/utils/constants/image_strings.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AzyroAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      // Body
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(SizeConstants.defaultSpace),
        child: Column(
          children: [
            // Profile Picture
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  CircularImage(image: AppImages.user, width: 80, height: 80,),
                  TextButton(onPressed: (){}, child: const Text('Change Profiile Picture')),
                ],
              ),
            ),

            // Details
            const SizedBox(height: SizeConstants.spaceBtwItems/2,),
            const Divider(),
            const SizedBox(height: SizeConstants.spaceBtwItems,),

            // Heading Profile Info
            SectionHeading(title: 'Profile Information', showActionButton: false,),
            const SizedBox(height: SizeConstants.spaceBtwItems,),

            ProfileMenu(title: 'Name', value: 'Abbas Ansari', onPressed: (){},),
            ProfileMenu(title: 'Username', value: 'abbas_ansari', onPressed: (){},),

            const SizedBox(height: SizeConstants.spaceBtwItems,),
            const Divider(),
            const SizedBox(height: SizeConstants.spaceBtwItems,),

            // Heading Personal Info
            SectionHeading(title: 'Personal Information', showActionButton: false,),
            const SizedBox(height: SizeConstants.spaceBtwItems,),
            ProfileMenu(title: 'User ID', value: '45689', icon: Iconsax.copy, onPressed: (){},),
            ProfileMenu(title: 'E-Mail', value: 'abbasansari@gmail.com', onPressed: (){},),
            ProfileMenu(title: 'Phone Number', value: '+91 987456123', onPressed: (){},),
            ProfileMenu(title: 'Gender', value: 'Male', onPressed: (){},),
            ProfileMenu(title: 'Date of Birth', value: '01 Jan, 2000', onPressed: (){},),   
            const Divider(),
            const SizedBox(height: SizeConstants.spaceBtwItems,),

            Center(
              child: TextButton(onPressed: (){}
              , child: const Text('Close Account', style: TextStyle(color: Colors.red),)),
            )
           ],
          ),
        ),
      ),
    );
  }
}
