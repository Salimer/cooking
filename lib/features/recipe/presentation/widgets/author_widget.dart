import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class AuthorWidget extends StatelessWidget {
  const AuthorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              foregroundImage:
                  AssetImage(Assets.images.avatar.keyName),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('نائف عبدالله',
                    style: TextStyles.paraBold
                        .copyWith(color: Neutral.black)),
                const SizedBox(
                  height: 10,
                ),
                Text('اليمن',
                    style: TextStyles.smallRegular
                        .copyWith(color: Neutral.grey2))
              ],
            )
          ],
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 5)),
          onPressed: () {},
          child: const Text(
            'متابعة',
            style: TextStyle(color: Neutral.white),
          ),
        )
      ],
    );
  }
}


