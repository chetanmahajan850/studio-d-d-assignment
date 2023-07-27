import 'package:flutter/material.dart';
import 'package:studio_d_d_assignment/utilities/app_colors.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1,
      child: Center(
        child: Container(
          height: 1,
          width: double.infinity,
          color: AppColors.primaryDark, // You can customize the color of the divider here
        ),
      ),
    );
  }
}
