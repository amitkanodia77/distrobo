
import 'package:distrobo1/app/home/screen/product_details.dart';
import 'package:distrobo1/utils/colors.dart';
import 'package:distrobo1/utils/text_style.dart';
import 'package:distrobo1/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Items extends StatelessWidget {
  
  final String imageUrl;
  final VoidCallback onAdd;

  const Items({
    super.key,
    required this.imageUrl,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
          height: 50.h,
          width: 42.w,
      
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1.4, color: Color.fromRGBO(226, 226, 226, 1),),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
      
              Padding(
                padding: const EdgeInsets.all(10),
                child: GestureDetector(onTap: () {
                   Get.to(() => ProductDetails());
                },
                  child: Container(height: 17.h, width: 20.h, decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    
                    color: Mycolor.itemscolor,
                  ),
                  child: Center(child: Image.asset(imageUrl,
                  height: 30.w,width: 30.w,
                  )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Icon(Icons.favorite_border),
              )
            ],),
      
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: [
                    Container(
                       width: 30.w,
                      child: Text("Alien Jerky Weed Killer Hot Beef 3.25oz",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Mycolor.itemsTextcolor,
                            fontFamily: "GilroySemiBold",
                            fontSize: 10,
                            fontWeight: FontWeight.w400
                          )
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: [
                    Text("\$9.99", style: MyTextStyle.gilroyBoldW414redcolor),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RoundedButton(
                  buttonHeight: 10.w,
                  buttonwidth: 30.w,
                  onchange: onAdd,
                  btnName: 'Add To Cart',
                 borderRadiusc: 10,
                  textStyle: MyTextStyle.GilroySemiBoldW410backgroundcolor,
      
                ),
              ),
            ],
          ),
        ),
    );
  }
}
