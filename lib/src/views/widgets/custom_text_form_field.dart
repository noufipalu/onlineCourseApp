import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {required this.hint,
      required this.prefixIcon,
      this.obscureText = false,
      this.onChanged,
      this.validator,
      this.filled = false,
      super.key});
  String hint;
  IconData prefixIcon;
  bool obscureText;
  String? Function(String?)? validator;
  Function(String)? onChanged;
  bool filled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        onChanged: onChanged,
        obscureText: obscureText,
        validator: validator,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3),
            borderSide: const BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3),
            borderSide: const BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3),
            borderSide: const BorderSide(color: Colors.white),
          ),
          hintText: hint,
          hintStyle: AppTheme.formHint,
          prefixIcon: Icon(prefixIcon),
          filled: filled,
        ),
      ),
    );
  }
}
