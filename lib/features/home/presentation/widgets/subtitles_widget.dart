import 'package:cooking/core/config/config.dart';
import 'package:flutter/material.dart';

class SubtitlesWidget extends StatelessWidget {
  final String subtitle;
  const SubtitlesWidget({super.key, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(subtitle, style: Theme.of(context).textTheme.headlineMedium),
            GestureDetector(
                onTap: () {},
                child: Text('عرض الكل', style: TextStyles.logoBodyStyle))
          ],
        ));
  }
}
