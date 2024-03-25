import 'package:cooking/core/config/app_theme.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FormInputWidget extends StatelessWidget {
  final String placeholder;
  final String iconName;
  const FormInputWidget(
      {super.key, required this.placeholder, required this.iconName});

  @override
  Widget build(BuildContext context) {
    const double prefixIconGap = 13;
    return TextFormField(
      key: const ValueKey('emailInput'),
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      decoration: InputDecoration(
        labelText: placeholder,
        labelStyle: TextStyles.labelRegular.copyWith(color: Neutral.grey2),
        prefixIcon: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: prefixIconGap + 5),
            FormInputIcon(
              iconName: iconName,
            ),
            SizedBox(width: prefixIconGap),
            SizedBox(
              height: 20,
              child: VerticalDivider(
                width: 5,
                color: Neutral.grey4,
                thickness: 1,
              ),
            ),
            SizedBox(width: prefixIconGap)
          ],
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(width: 8),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(width: 2, color: Neutral.grey4),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email address';
        }
        return null;
      },
      onSaved: (newValue) {},
    );
  }
}

class FormInputIcon extends StatelessWidget {
  final String iconName;
  const FormInputIcon({super.key, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      iconName,
      semanticsLabel: 'Email input icon',
      width: 25,
    );
  }
}
