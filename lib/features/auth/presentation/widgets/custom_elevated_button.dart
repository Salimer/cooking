import 'package:flutter/material.dart';
import 'package:cooking/core/constants/constants.dart';

class CustomElevatedButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final VoidCallback? onPressed;
  final Widget child;

  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.borderRadius,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(0);
    return Container(
      width: width,
      height:  MediaQuery.of(context).size.height / 13.5333,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [green[100]!, green[500]!]),
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child,
      ),
    );
  }
}