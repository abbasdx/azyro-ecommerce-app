import 'package:azyro_ecommerce_app/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:azyro_ecommerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Azyro",
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
