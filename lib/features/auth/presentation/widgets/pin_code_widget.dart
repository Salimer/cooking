import 'package:cooking/core/config/config.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeWidget extends StatelessWidget {
  const PinCodeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 4,
      pinTheme: PinTheme(
        fieldHeight: 70,
        fieldWidth: 70,
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(24),
        // borderWidth: 10,
        inactiveColor: orange[200],
        activeColor: orange[500],
        selectedColor: red[500],
      ),
      textStyle: TextStyles.h2Bold.copyWith(color: red[500]),
    );
  }
}
