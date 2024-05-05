import 'package:cooking/core/config/config.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:flutter/material.dart';

class AuthBottomActionWidget extends StatelessWidget {
  final String redText;
  final String whiteText;
  const AuthBottomActionWidget(
      {super.key, required this.redText, required this.whiteText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          whiteText,
          style: TextStyles.labelRegular.copyWith(color: Neutral.grey2),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            redText,
            style: TextStyles.labelBold.copyWith(color: red[500]),
          ),
        ),
      ],
    );
  }
}
