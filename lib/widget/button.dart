
import 'package:distrobo1/utils/colors.dart';
import 'package:distrobo1/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RoundedButton extends StatelessWidget {
  
  final String btnName;
  final Icon? icon;
  final Color btnColor;
  final TextStyle? textStyle;
  final VoidCallback onchange;
  final double? buttonHeight;
  final double? buttonwidth;
  final String? imageUrl; 
  final double? borderRadiusc;
 
  RoundedButton({
    this.icon,
    this.btnColor = Mycolor.buttoncolor,
    this.textStyle,
    required this.onchange,
    required this.btnName,
    this.buttonHeight,
    this.buttonwidth,
     this.imageUrl, 
     this.borderRadiusc, 
   
    
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: 
      onchange  ,
    
      child: Container(
        height: buttonHeight ?? 7.h,
        width: buttonwidth ?? double.infinity,
        decoration: BoxDecoration(
          
  borderRadius: BorderRadius.circular(borderRadiusc ?? 20),
  color: Mycolor.buttoncolor,

),
        child: Center(
          child: icon != null
              ? Row(
                  children: [
                   icon != null? icon! : imageUrl!=null? Image.asset(imageUrl!)  :Container(),
                    
                    Text(
                      btnName,
                      style: textStyle !=null ? textStyle : MyTextStyle.gilroyBoldW420buttonTextcolor,
                    ),
                  ],
                )
              : Text(btnName, style: textStyle !=null ? textStyle :  MyTextStyle. gilroyBoldW420buttonTextcolor  )
      
          
        ),
      ),
    );

    
  }
}
