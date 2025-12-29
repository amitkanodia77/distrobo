import 'package:distrobo1/utils/colors.dart';
import 'package:distrobo1/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding:  EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                   Get.back();
                },
                child: Icon(Icons.arrow_back_ios),
              ),
              SizedBox(width: 20.w),
              Text(
                "Payment Method",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Container(
            height: 100,
            width: double.infinity,
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Mycolor.itemscolor,
              border: Border.all(width: 1.4, color: Color.fromRGBO(226, 226, 226, 1),),
            ),
            child: Center(
              child: ListTile(
                  title: Text("Cash on delivery "),
                  leading: Image.asset("assets/images/cash.png",),
                
              )
            ),
          ),
           Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Mycolor.itemscolor,
              border: Border.all(width: 1.4, color: Color.fromRGBO(226, 226, 226, 1),),
            ),
            margin: EdgeInsets.only(top: 20),

            child: Center(
              child: ListTile(
                  title: Text("Debit card"),
                  leading: Image.asset("assets/images/debit_card.png",),
                
              )
              )
            
          ),
          SizedBox(height: 45.h,),
          RoundedButton(onchange: (){}, btnName: 'Continue')
        ],
      ),)
    );
  }
}