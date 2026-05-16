import 'package:flutter/material.dart';
import 'package:store__app/core/constants/app_colors.dart';

class CustomElvatedButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const CustomElvatedButton({
    required this.title,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 318,
        height: 47,
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Color(0xffBEBEBE),
              width: 1,
            )),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
