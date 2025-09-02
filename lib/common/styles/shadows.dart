import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class AzyroShadowStyle{

  static final verticalProductShadow = BoxShadow(
    // ignore: deprecated_member_use
    color: AppColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

  static final horizontalProductShadow = BoxShadow(
    // ignore: deprecated_member_use
    color: AppColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );
}