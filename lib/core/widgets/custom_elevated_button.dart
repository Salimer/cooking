import 'package:flutter/material.dart';
import 'package:cooking/core/constants/constants.dart';

class CustomElevatedButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double width;
  final VoidCallback? onPressed;
  final String text;

  const CustomElevatedButton({
    super.key,
    this.onPressed,
    required this.text,
    this.borderRadius,
    this.width = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(10);
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, 60),
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
      ),
      child: Text(
        text,
        style: TextStyles.paraBold,
      ),
    );
  }
}
