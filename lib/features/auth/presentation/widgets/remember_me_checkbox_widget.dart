import 'package:cooking/core/config/config.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/features/auth/presentation/widgets/custom_checkbox_widget.dart';
import 'package:flutter/material.dart';

class RememberMeCheckboxWidget extends StatefulWidget {
  final Widget text;
  const RememberMeCheckboxWidget({super.key, required this.text});

  @override
  State<RememberMeCheckboxWidget> createState() =>
      _RememberMeCheckboxWidgetState();
}

class _RememberMeCheckboxWidgetState extends State<RememberMeCheckboxWidget> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment:
          CrossAxisAlignment.center, // Control the width of the row
      children: [
        CustomCheckboxWidget(
          value: rememberMe,
          onChanged: (value) => setState(() => rememberMe = value),
          size: 25.0, // Adjust size if needed
          borderRadius: 10.0, // Adjust border radius if needed
          activeColor: orange[500]!, // Adjust color if needed
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: widget.text,
        ),
      ],
    );
  }
}









// class RememberMeCheckboxWidget extends StatefulWidget {
//   const RememberMeCheckboxWidget({
//     super.key,
//   });

//   @override
//   State<RememberMeCheckboxWidget> createState() =>
//       _RememberMeCheckboxWidgetState();
// }

// class _RememberMeCheckboxWidgetState extends State<RememberMeCheckboxWidget> {
//   @override
//   Widget build(BuildContext context) {
//     bool? rememberMe = false;
//     return Container(
//       width: 150,
//       padding: EdgeInsets.all(0),
//       child: ListTileTheme(
//         horizontalTitleGap: 0,
//         child: CheckboxListTile(
//           contentPadding: EdgeInsets.all(0),
//           value: rememberMe,
//           onChanged: (bool? value) {
//             rememberMe = value;
//             setState(() {});
//           },
//           title: Text('تذكرني'),
//           activeColor: Colors.orangeAccent,
//           checkColor: Colors.white,
//           tileColor: Colors.black12,
//           controlAffinity: ListTileControlAffinity.leading,
//         ),
//       ),
//     );
//   }
// }
