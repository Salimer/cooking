import 'package:flutter/material.dart';

class CustomCheckboxWidget extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final double size; // Size of the checkbox square
  final double borderRadius; // Border radius for the checkbox
  final Color activeColor; // Color of the checkbox when checked

  const CustomCheckboxWidget({
    super.key,
    required this.value,
    required this.onChanged,
    this.size = 20.0,
    this.borderRadius = 4.0,
    this.activeColor = Colors.blue,
  });

  @override
  State<CustomCheckboxWidget> createState() => _CustomCheckboxWidgetState();
}

class _CustomCheckboxWidgetState extends State<CustomCheckboxWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onChanged(!widget.value),
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          color: widget.value ? widget.activeColor : Colors.transparent,
          borderRadius: BorderRadius.circular(widget.borderRadius),
          border: Border.all(
            // color: widget.value ? widget.activeColor : Colors.grey,
            color: widget.activeColor,
            width: 2.5,
          ),
        ),
        child: widget.value
            ? Center(
                child: Icon(
                  Icons.check,
                  size: widget.size *
                      0.7, // Adjust icon size based on checkbox size
                  color: Colors.white,
                ),
              )
            : null,
      ),
    );
  }
}
