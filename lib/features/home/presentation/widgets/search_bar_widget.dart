import 'package:cooking/core/config/config.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 90,
      right: 0,
      left: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal:
              phoneOrientation(context) == Orientation.landscape ? 80 : 25,
        ),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 30.0, // Increase blurRadius for wider shadow
                  spreadRadius:
                      10.0, // Increase spreadRadius for wider shadow area
                  offset: const Offset(0, 10)),
            ],
          ),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 15),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25)),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 20, right: 15),
                child: SvgPicture.asset(
                  Assets.icons.searchIcon,
                  semanticsLabel: 'Search icon',
                ),
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: 'ابحث عن وصفة',
              hintStyle: TextStyles.labelRegular.copyWith(color: Neutral.grey2),
            ),
          ),
        ),
      ),
    );
  }
}
