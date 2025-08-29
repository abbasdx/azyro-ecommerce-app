import 'package:flutter/material.dart';

// import '../../constants/colors.dart';
// import '../../constants/sizes.dart';

// /* -- Light & Dark Elevated Button Themes -- */
// class TElevatedButtonTheme {
//   TElevatedButtonTheme._(); //To avoid creating instances


//   /* -- Light Theme -- */
//   static final lightElevatedButtonTheme  = ElevatedButtonThemeData(
//     style: ElevatedButton.styleFrom(
//       elevation: 0,
//       foregroundColor: AppColors.white,
//       backgroundColor: AppColors.dark,
//       side: const BorderSide(color: AppColors.dark),
//       padding: const EdgeInsets.symmetric(vertical: TSizes.buttonHeight),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSizes.borderRadiusLg)),
//     ),
//   );

//   /* -- Dark Theme -- */
//   static final darkElevatedButtonTheme = ElevatedButtonThemeData(
//     style: ElevatedButton.styleFrom(
//       elevation: 0,
//       foregroundColor: AppColors.dark,
//       backgroundColor: AppColors.primary,
//       side: const BorderSide(color: AppColors.primary),
//       padding: const EdgeInsets.symmetric(vertical: TSizes.buttonHeight),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSizes.borderRadiusLg)),
//     ),
//   );
// }


/// -- Light & Dark Elevated Button Themes
class TElevatedButtonTheme {
  TElevatedButtonTheme._(); //To avoid creating instances

  /// -- Light Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: Colors.blue),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );

  /// -- Dark Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: Colors.blue),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}
