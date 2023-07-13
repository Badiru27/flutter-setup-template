import 'package:flutter/material.dart';
import 'package:meuve_v2/src/core/extensions/responsiveness.dart';

class AppSpacing {
  AppSpacing._();
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  // vertical Spacing
  static SizedBox verticalSpaceTiny = SizedBox(height: 4.height);
  static SizedBox verticalSpaceSmall = SizedBox(height: 8.height);
  static SizedBox verticalSpaceMedium = SizedBox(height: 16.height);
  static SizedBox verticalSpaceLarge = SizedBox(height: 24.height);
  static SizedBox verticalSpaceHuge = SizedBox(height: 32.height);
  static SizedBox verticalSpaceMassive = SizedBox(height: 40.height);
  static SizedBox setVerticalSpace(int h) => SizedBox(height: h.height);

// horizontal spacing
  static SizedBox horizontalSpaceTiny = SizedBox(width: 4.width);
  static SizedBox horizontalSpaceSmall = SizedBox(width: 8.width);
  static SizedBox horizontalSpaceMedium = SizedBox(width: 16.width);
  static SizedBox horizontalSpaceLarge = SizedBox(width: 24.width);
  static SizedBox horizontalSpaceHuge = SizedBox(width: 32.width);
  static SizedBox horizontalSpaceMassive = SizedBox(width: 40.width);
  static SizedBox setHorizontalSpace(num w) => SizedBox(width: w.width);
}
