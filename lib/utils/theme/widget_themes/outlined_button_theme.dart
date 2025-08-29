// import 'package:flutter/material.dart';

// import '../../constants/colors.dart';
// import '../../constants/sizes.dart';

// /* -- Light & Dark Outlined Button Themes -- */
// class TOutlinedButtonTheme {
//   TOutlinedButtonTheme._(); //To avoid creating instances

//   /* -- Light Theme -- */
//   static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
//     style: OutlinedButton.styleFrom(
//       foregroundColor: AppColors.secondary,
//       side: const BorderSide(color: AppColors.secondary),
//       padding: const EdgeInsets.symmetric(vertical: TSizes.buttonHeight),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSizes.borderRadiusLg)),
//     ),
//   );

//   /* -- Dark Theme -- */
//   static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
//     style: OutlinedButton.styleFrom(
//       foregroundColor: AppColors.white,
//       side: const BorderSide(color: AppColors.white),
//       padding: const EdgeInsets.symmetric(vertical: TSizes.buttonHeight),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSizes.borderRadiusLg)),
//     ),
//   );
// }

import 'package:flutter/material.dart';

/* -- Light & Dark Outlined Button Themes -- */
class TOutlinedButtonTheme {
  TOutlinedButtonTheme._(); // To avoid creating instances

  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: const BorderSide(color: Colors.blue),
      textStyle: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.white,
      side: const BorderSide(color: Colors.blueAccent),
      textStyle: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );
}