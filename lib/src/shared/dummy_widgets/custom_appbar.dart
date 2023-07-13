import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomAppBar extends ConsumerWidget {
  const CustomAppBar({super.key, this.rightWidget});
  final Widget? rightWidget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: SizedBox(
          height: 100,
          child: Image.asset(
            '',
            scale: 2,
          ),
        ),
        actions: [
          rightWidget ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
