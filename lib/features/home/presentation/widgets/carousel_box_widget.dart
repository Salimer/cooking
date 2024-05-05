import 'package:cooking/core/constants/constants.dart';
import 'package:flutter/material.dart';

class CarouselBoxWidget extends StatelessWidget {
  const CarouselBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xffd9d9d9), Colors.black],
        ),
      ),
      margin: const EdgeInsets.all(5),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
          child: Text(
            'عنوان الوصفة يمكن تغيير بعنوان اخر عنوان الوصفة يمكن',
            style: TextStyles.paraBold.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
