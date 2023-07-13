import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDropDown extends StatelessWidget {
  const AppDropDown({
    Key? key,
    required this.selectedValue,
    required this.items,
    required this.onSelectChanged,
    required this.hint,
  }) : super(key: key);
  final String selectedValue;
  final List<String> items;
  final void Function(String?)? onSelectChanged;
  final String hint;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DropdownButtonFormField(
      hint: const Text('Select Country'),
      dropdownColor: theme.cardColor,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 20.h),
      ),
      value: selectedValue,
      items: items
          .map((select) => DropdownMenuItem(value: select, child: Text(select)))
          .toList(),
      onChanged: onSelectChanged,
    );
  }
}
