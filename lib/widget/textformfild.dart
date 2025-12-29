import 'package:distrobo1/app/auth/controlar/login_controller.dart';
import 'package:distrobo1/utils/colors.dart';
import 'package:distrobo1/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Textformfild extends StatelessWidget {
  final loginController = Get.put(LoginController());
  final String hintText;
  final TextInputType? keyboardType;
  final int? MaxLength;
  final int? minLines;
  final double? contentPadding_vertical;
   final double? contentPadding_horizontal;
  final Icon? icon;
  final int? maxLines; 
  final VoidCallback? onTapSurffix;
  final VoidCallback? onTapSurffixqr;
  final Icon? suffixIcony;
  final Widget? suffix;

  // final bool? isHide;

  Textformfild({super.key, 
    required this.hintText,
    this.icon,
    this.onTapSurffix,
    this.onTapSurffixqr,
    this.suffixIcony,
    this.suffix,
    this.minLines,
    this.MaxLength,
    this.maxLines,
    this.keyboardType,
    this.contentPadding_vertical,
    this.contentPadding_horizontal,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: MaxLength,
      keyboardType: keyboardType,
      minLines: minLines,
      maxLines: maxLines,

      // obscureText:  isHide ?? false,

      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: contentPadding_vertical ?? 18,   
          horizontal: contentPadding_horizontal ?? 15,

        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 1.5, color: Mycolor.unfocascolor),
        ),
        filled: true,
        fillColor: Mycolor.transparent,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 1.5, color: Mycolor.unfocascolor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 1.5, color: Mycolor.focascolor),
        ),
        hintText: hintText,
        prefixIcon: icon,
        hintStyle: MyTextStyle.gilroyRegularW416subtitelcolor,
        suffix: suffix,
        suffixIcon: suffixIcony != null
            ? IconButton(
                icon: suffixIcony!,
                onPressed: onTapSurffixqr,
              )
            : null,
      ),
    );
  }
}
