import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meuve_v2/src/core/constants/app_spacing.dart';
import 'package:meuve_v2/src/core/themes/app_theme.dart';

class AppMainButton extends StatelessWidget {
  const AppMainButton({
    super.key,
    this.buttonColor,
    required this.title,
    this.icon,
    this.onButtonTapped,
    this.isBusy = false,
    this.width,
    this.textStyle,
  });
  final Color? buttonColor;
  final String title;
  final Widget? icon;
  final void Function()? onButtonTapped;
  final bool isBusy;
  final double? width;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          fixedSize: Size(
            width ?? AppSpacing.screenWidth(context),
            AppTheme.buttonHeight,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: AppTheme.appBorderRadius,
          ),
          padding: const EdgeInsets.all(0)),
      onPressed: onButtonTapped,
      child: isBusy
          ? const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: CircularProgressIndicator(),
              ),
            )
          : Stack(alignment: Alignment.center, children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: textStyle ??
                    theme.textTheme.bodyLarge!.copyWith(
                        color: onButtonTapped != null
                            ? AppTheme.kcWhiteColor
                            : AppTheme.kcGrayColor,
                        fontWeight: FontWeight.bold),
              ),
              if (icon != null)
                Container(
                    padding: EdgeInsets.only(right: 15.w),
                    alignment: Alignment.centerRight,
                    child: icon!),
            ]),
    );
  }
}
