import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  final String? labelTextForm;
  final Icon? prefixIcon;
  final bool obscureText;
  final Color? fillColor;
  final TextStyle? style;
  final TextStyle? labelStyle;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;

  const TextForm(
      {Key? key,
      this.labelTextForm,
      this.prefixIcon,
      required this.obscureText,
      required this.fillColor,
      this.style,
      this.labelStyle,
      this.keyboardType,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: TextField(
        style: style,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          fillColor: fillColor,
          filled: true,
          prefixIcon: prefixIcon,
          labelText: labelTextForm,
          labelStyle: labelStyle,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
