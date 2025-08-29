import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class TTextFormFieldTheme {

  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: AppColors.darkGrey,
    suffixIconColor: AppColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: SizeConstants.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: SizeConstants.fontSizeMd, color: AppColors.black),
    hintStyle: const TextStyle().copyWith(fontSize: SizeConstants.fontSizeSm, color: AppColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    // ignore: deprecated_member_use
    floatingLabelStyle: const TextStyle().copyWith(color: AppColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizeConstants.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizeConstants.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizeConstants.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizeConstants.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizeConstants.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: AppColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: const Color.fromARGB(255, 255, 255, 255),
    suffixIconColor: const Color.fromARGB(255, 255, 255, 255),
    // constraints: const BoxConstraints.expand(height: SizeConstants.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: SizeConstants.fontSizeMd, color: AppColors.white),
    hintStyle: const TextStyle().copyWith(fontSize: SizeConstants.fontSizeSm, color: AppColors.white),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    // ignore: deprecated_member_use
    floatingLabelStyle: const TextStyle().copyWith(color: AppColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizeConstants.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizeConstants.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizeConstants.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizeConstants.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizeConstants.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: AppColors.warning),
    ),
  );

}