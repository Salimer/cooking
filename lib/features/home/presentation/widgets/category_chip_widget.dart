import 'package:cooking/core/constants/constants.dart';
import 'package:flutter/material.dart';

class CategoryChipWidget extends StatelessWidget {
  final String label;
  final String icon;
  const CategoryChipWidget(
      {super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          margin: const EdgeInsets.only(right: 20),
          padding: const EdgeInsets.only(right: 5, top: 4, bottom: 4, left: 15),
          decoration: BoxDecoration(
            color: Neutral.grey4,
            borderRadius: BorderRadius.circular(27),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.only(
                      bottom: 5.5, left: 6.5, top: 3, right: 3),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Text(icon, style: const TextStyle(fontSize: 16))),
              const SizedBox(width: 5),
              Text(label,
                  style: TextStyles.paraRegular.copyWith(color: Neutral.grey1))
            ],
          )),
    );
  }
}
