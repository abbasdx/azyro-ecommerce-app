
import 'package:azyro_ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(leading: CircularImage(image: AppImages.user, width: 50, height: 50, padding: 0,),
    title: Text('Abbas Ansari', style: Theme.of(context).textTheme.headlineSmall!.apply(color: AppColors.white),),
    subtitle: Text('abbasxansari@gmail.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: AppColors.white),),
    trailing: IconButton(onPressed: (){}, icon: const Icon(Iconsax.edit, color: AppColors.white,)),);
  }
}
