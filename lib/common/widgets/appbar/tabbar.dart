import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/device/device_utility.dart';
import 'package:azyro_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AzyroTabBar extends StatelessWidget implements PreferredSizeWidget {
  const AzyroTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = AzyroHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? AppColors.black : AppColors.white,
      child: TabBar(
        tabAlignment: TabAlignment.start,
        tabs: tabs,
        isScrollable: true,
        indicatorColor: AppColors.primary,
        labelColor: dark ? AppColors.white : AppColors.primary,
        unselectedLabelColor: AppColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
