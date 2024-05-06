import 'package:cooking/core/constants/constants.dart';
import 'package:flutter/material.dart';

class SubtitlesWidget extends StatelessWidget {
  final String subtitle;
  const SubtitlesWidget({super.key, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            subtitle,
            style: TextStyles.h5Bold.copyWith(color: Neutral.black),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              'عرض الكل',
              style: TextStyles.paraRegular.copyWith(color: orange[500]),
            ),
          ),
        ],
      ),
    );
  }
}
