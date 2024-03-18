import 'package:cooking/core/config/app_theme.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cooking/gen/assets.gen.dart';

class FormInputWidget extends StatelessWidget {
  const FormInputWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: const ValueKey('emailInput'),
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      decoration: InputDecoration(
        labelText: 'البريد الالكتروني',
        labelStyle: TextStyles.placeholder,
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 10),
          child: Container(
            padding: EdgeInsets.symmetric( horizontal: 10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  width: 1,
                  
                )
              )
            ),
            child: SvgPicture.asset(
              Assets.icons.emailInput,
              semanticsLabel: 'Email input icon',
              width: 50
              ),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(width: 8),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(width: 2, color: Natural.grey4),
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
