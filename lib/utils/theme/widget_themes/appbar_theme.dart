// import 'package:flutter/material.dart';

// import '../../constants/colors.dart';

// class TAppBarTheme{
//   TAppBarTheme._();

//   static const lightAppBarTheme = AppBarTheme(
//     elevation: 0,
//     centerTitle: true,
//     backgroundColor: Colors.transparent,
//     iconTheme: IconThemeData(color: AppColors.dark, size: 18.0),
//     actionsIconTheme: IconThemeData(color: AppColors.dark, size: 18.0),
//   );
//   static const darkAppBarTheme = AppBarTheme(
//     elevation: 0,
//     centerTitle: true,
//     backgroundColor: Colors.transparent,
//     iconTheme: IconThemeData(color: AppColors.white, size: 18.0),
//     actionsIconTheme: IconThemeData(color: AppColors.white, size: 18.0),
//   );
// }

import 'package:flutter/material.dart';

class TAppBarTheme {
  TAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 24),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
  );
  
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.white, size: 24),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white),
  );
}