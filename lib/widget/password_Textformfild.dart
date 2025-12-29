
import 'package:distrobo1/utils/colors.dart';
import 'package:distrobo1/utils/text_style.dart';
import 'package:flutter/material.dart';


class PasswordTextformfild extends StatelessWidget {
  
  final String hintText;
  final Icon? icon;
  final Icon? suffixicon;
  final VoidCallback? onTapSurffix;
  final bool? isHide;

  PasswordTextformfild({
    required this.hintText,
    this.icon,
    this.suffixicon,
    this.onTapSurffix,  this.isHide,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:  isHide ?? false,
      decoration: InputDecoration(
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
         prefixIcon:icon ,
    
        

        hintStyle: MyTextStyle.gilroyRegularW416subtitelcolor,
    
       
        suffixIcon:  GestureDetector( 
          onTap: onTapSurffix,
          child: suffixicon),
       
      ),
    );
  }
}
