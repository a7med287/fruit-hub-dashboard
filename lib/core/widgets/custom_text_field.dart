import 'package:flutter/material.dart';
import 'package:fruit_hub_dashboard/core/utils/app_colors.dart';

import '../utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.textInputType,
    this.suffixIcon,
    this.onSaved,  this.obscureText = false,  this.maxLines = 1 ,
  });

  final String hintText;
  final TextInputType? textInputType;
  final Widget? suffixIcon;
  final void Function(String?)? onSaved;
  final bool obscureText ;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines ,
      obscureText: obscureText ,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "الحقل مطلوب";
        }
        return null;
      },
      onSaved: onSaved,
      keyboardType: textInputType,

      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyles.bold13.copyWith(color: Color(0xff949D9E)),
        filled: true,
        fillColor: Color(0xffF9FAFA),
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.primaryColor, width: 1.5),
    );
  }
}
