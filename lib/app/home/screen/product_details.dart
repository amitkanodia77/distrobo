import 'package:distrobo1/app/home/controlar/product_details_controller.dart';
import 'package:distrobo1/app/home/screen/scan_qr_code.dart';
import 'package:distrobo1/utils/colors.dart';
import 'package:distrobo1/utils/text_style.dart';
import 'package:distrobo1/widget/button.dart';
import 'package:distrobo1/widget/textformfild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final ProductDetailsController controller = Get.put(ProductDetailsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Product Details",
                    style: MyTextStyle.GilroySemiBoldW420itemsTextcolor,
                  ),
                ],
              ),
              SizedBox(
                height: 10.w,
              ),
              Textformfild(
                hintText: "Search",
                icon: Icon(Icons.search),
                suffixIcony: Icon(Icons.qr_code_scanner_rounded),
                onTapSurffixqr: () {
                  Get.to(() => ScanQrCode());
                },
              ),
              SizedBox(
                height: 10.w,
              ),
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Container(
                    height: 65.w,
                    width: 100.w,
                    color: Mycolor.itemscolor,
                    child: Center(
                      child: Image.asset(
                        "assets/images/Snacks.png",
                        height: 50.w,
                        width: 50.w,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Icon(Icons.favorite_border),
                  ),
                ],
              ),
              SizedBox(
                width: 80.w,
                child: Text(
                  "Alien Jerky Weed Killer Hot Beef 3.25oz",
                  style: MyTextStyle.gilroyBoldW422titlecolor,
                ),
              ),
              Text(
                "1.5 oz (1 Pack)",
                style: MyTextStyle.gilroyRegularW416subtitelcolor,
              ),
              RichText(
                text: TextSpan(
                  text: "Categories:  ",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(140, 141, 140, 1),
                      fontFamily: "GilroySemiBold"),
                  children: <TextSpan>[
                    TextSpan(
                        text: "Candy and Snacks",
                        style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Mycolor.redcolor,
                      fontFamily: "GilroyMedium"),),
                  ],
                ),
              ),
              Text(
                "\$24.99",
                style: MyTextStyle.gilroyBoldW426rupaycolor,
              ),
              SizedBox(height: 3.w,),
             Obx(() {
  if (controller.quantity.value == 0) {
    return RoundedButton(
      onchange: () {
        controller.addToCart();
      },
      btnName: 'Add to Cart',
      buttonHeight: 15.w,
      buttonwidth: 100.w,
    );
  } else {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RoundedButton(
          onchange: () {
            controller.decrement();
          },
          btnName: '-',
          textStyle: TextStyle(
            fontSize: 8.w,
            color: Mycolor.itemscolor,
            
          ),
          buttonHeight: 12.w,
          buttonwidth: 12.w,
        ),
        Text(
          "${controller.quantity.value} ",
          style: MyTextStyle.gilroySemiBoldW418titelcolor,
        ),
        RoundedButton(
          onchange: () {
            controller.increment();
          },
          btnName: '+',
          textStyle: TextStyle(
            fontSize: 8.w,
             color: Mycolor.itemscolor,
          ),
          buttonHeight: 12.w,
          buttonwidth: 12.w,
        ),
      ],
    );
  }
}),

              SizedBox(
                height: 10.w,
              ),
              RichText(
                text: TextSpan(
                  text: "Delivery   ",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(140, 141, 140, 1),
                      fontFamily: "GilroySemiBold"),
                  children: <TextSpan>[
                    TextSpan(
                        text: "Estimated Monday, December 4 ",
                        style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Mycolor.titlecolor,
                      fontFamily: "GilroySemiBold"
                        ),),
                  ],
                ),
              ),
              SizedBox(
                height: 5.w,
              ),

              Text("SKU: SW1285-24", style: MyTextStyle.gilroySemiBoldW418titelcolor, ),
              
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

