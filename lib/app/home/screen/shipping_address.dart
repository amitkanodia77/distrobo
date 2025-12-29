
import 'package:distrobo1/app/home/screen/schedule_delivery.dart';
import 'package:distrobo1/utils/text_style.dart';
import 'package:distrobo1/widget/button.dart';
import 'package:distrobo1/widget/textformfild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({super.key});

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      FocusScope.of(context).unfocus();
    },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    
                    children: [
                      GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(Icons.arrow_back_ios)),
                          SizedBox(width: 20.w,),
                      Text(
                        "Shipping Address",
                        style: MyTextStyle.GilroySemiBoldW420itemsTextcolor,
                      ),
                      
                    ],
                  ),
                  SizedBox(height: 5.w,),
                  Text(
                        "Address",
                        style: MyTextStyle.GilroySemiBoldW420itemsTextcolor,
                      ),
                
                  Textformfild(
                    
                    hintText: 'Enter address',
                    
                  ),
                  SizedBox(height: 5.w,),
                  Text(
                        "City",
                        style: MyTextStyle.GilroySemiBoldW420itemsTextcolor,
                      ),
                
                  Textformfild(
                    
                    hintText: 'Enter city',
                  ),
                  SizedBox(height: 5.w,),
                  Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "State",
                style: MyTextStyle.GilroySemiBoldW420itemsTextcolor,
              ),
              SizedBox(height: 8),
              Textformfild(
                hintText: 'Enter state',
              ),
            ],
          ),
                ),
                
                SizedBox(width: 16), // space between two fields
                
                Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ZIP Code",
                style: MyTextStyle.GilroySemiBoldW420itemsTextcolor,
              ),
              SizedBox(height: 8),
              Textformfild(
                MaxLength: 6,
                hintText: 'Enter zip code',
                keyboardType: TextInputType.numberWithOptions(),
              ),
            ],
          ),
                ),
          ],
                ),
                SizedBox(height: 5.w,),
                RoundedButton(onchange: (){
                   Get.to(() => ScheduleDelivery());
                }, btnName: "Save")
          
          
          
          ])
          ),
        ),
      ),
    );
  }
}