import 'package:distrobo1/app/home/controlar/shop_controller.dart';
import 'package:distrobo1/app/home/screen/candy_snacks.dart';
import 'package:distrobo1/app/home/screen/scan_qr_code.dart';
import 'package:distrobo1/utils/text_style.dart';
import 'package:distrobo1/widget/textformfild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  final shopController = Get.put(ShopController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
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
                    width: 30.w,
                  ),
                  Text(
                    "Shop",
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
                height: 5.w,
              ),
              Container(
                height: 60.h,
                width: 100.w,
                child: ListView.builder(
                  itemCount: shopController.shoplist.length,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => CandySnacks());
                        },
                        child: Container(
                          height: 25.w,
                          width: 100.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.fromLTRB(15, 20, 0, 0),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(() => CandySnacks());
                                },
                                child: Image.asset(
                                  shopController.shoplist[index],
                                  height: 20.w,
                                  width: 15.w,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            title: Text(
                              shopController.shopnamelist[index],
                              style:
                                  MyTextStyle.gilroySemiBoldW418backgroundcolor,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
