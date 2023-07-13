import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppInputField extends StatelessWidget {
  const AppInputField({
    super.key,
    this.controller,
    this.keyboardType,
    this.maxLines = 1,
    this.obscureText,
    this.validator,
    this.hintText,
    this.hintStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.minLines = 1,
  });
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final int? maxLines;
  final int? minLines;
  final bool? obscureText;
  final String? Function(String?)? validator;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextFormField(
      style: theme.textTheme.bodyLarge,
      controller: controller,
      keyboardType: keyboardType,
      maxLines: maxLines,
      minLines: minLines,
      obscureText: obscureText ?? false,
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle,
        focusedBorder: theme.inputDecorationTheme.focusedBorder,
        suffixIcon: suffixIcon != null
            ? Padding(
                padding: EdgeInsets.only(left: 12.w),
                child: suffixIcon,
              )
            : null,
        prefixIcon: prefixIcon != null
            ? Padding(
                padding: EdgeInsets.only(left: 12.w),
                child: prefixIcon,
              )
            : null,
      ),
    );
  }
}
