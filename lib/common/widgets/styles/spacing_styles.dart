import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class AzyroSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: 70,
    left: SizeConstants.defaultSpace,
    bottom: SizeConstants.defaultSpace,
    right: SizeConstants.defaultSpace,
  );
  static const EdgeInsetsGeometry paddingWithDefaultWidth = EdgeInsets.only(
    left: SizeConstants.defaultSpace,
    right: SizeConstants.defaultSpace,
  );

  static const EdgeInsetsGeometry paddingOnlyVertical = EdgeInsets.symmetric(
    vertical: SizeConstants.defaultSpace,
  );

  static const EdgeInsetsGeometry paddingWithDefaultHeight = EdgeInsets.only(
    top: SizeConstants.defaultSpace,
    left: SizeConstants.defaultSpace,
    bottom: SizeConstants.defaultSpace,
    right: SizeConstants.defaultSpace,
  );
}
