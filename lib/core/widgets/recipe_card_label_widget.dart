import 'package:cooking/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecipeCardLabelWidget extends StatelessWidget {
  final String redText;
  final String greyText;
  final int duration;
  final String icon;
  final double pad;
  final Color? backgroundColor;

  const RecipeCardLabelWidget({
    super.key,
    required this.greyText,
    required this.redText,
    required this.duration,
    required this.icon,
    this.pad = 0,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(pad),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(icon),
              const SizedBox(width: 5),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: duration.toString(),
                      style: const TextStyle(color: Colors.red)),
                  const TextSpan(text: ' '),
                  TextSpan(
                      text: redText, style: const TextStyle(color: Colors.red))
                ]),
              )
            ],
          ),
          Text(
            greyText,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
