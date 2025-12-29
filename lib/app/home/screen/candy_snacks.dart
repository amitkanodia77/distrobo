import 'package:distrobo1/app/home/controlar/candysnacks_controller.dart';
import 'package:distrobo1/app/home/screen/scan_qr_code.dart';
import 'package:distrobo1/utils/text_style.dart';
import 'package:distrobo1/widget/items.dart';
import 'package:distrobo1/widget/textformfild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CandySnacks extends StatefulWidget {
  const CandySnacks({super.key});

  @override
  State<CandySnacks> createState() => _CandySnacksState();
}

class _CandySnacksState extends State<CandySnacks> {
  final CandysnacksController candysnacksController =
      Get.put(CandysnacksController());
      
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back_ios)),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Candy & Snacks",
                    style: MyTextStyle.GilroySemiBoldW420itemsTextcolor,
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                child: Textformfild(
                  hintText: "Search",
                  icon: Icon(Icons.search),
                  suffixIcony: Icon(Icons.qr_code_scanner_rounded),
                  onTapSurffixqr: () {
                    Get.to(() => ScanQrCode());
                  },
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Column(
            children: [
              candysnacksController.itemlist.value
              
              ?item()
              :candysnacks(),
            ],
          ),
            ],
          ),
        
        ),
      ),
    );
  }
  Widget item() {
  return  Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 3.h,
      ),
      SizedBox(width: 100.w,height: 70.h,
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 50,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 0,
              // childAspectRatio: 0.5,
              mainAxisExtent: 280),
          itemBuilder: (context, index) {
            return Items(
              imageUrl: 'assets/images/Candy.png',
              onAdd: () {},
            );
          },
        ),
      ),
      SizedBox(
        height: 20,
      ),
    ],
  );
}

Widget candysnacks() {

  return SizedBox(
      height: 100.h,
      width: 100.w,
      child: Obx(
        () => ListView.builder(
          itemCount: candysnacksController.imagelist.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Container(
                width: 90.w,height: 10.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade300, width: 1
                        ),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile( 
                    leading: Container(height: 15.w, width: 15.w,
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blueGrey[200],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(candysnacksController.imagelist[index],
                        
                            height: 20, width: 20, fit: BoxFit.contain),),
                    ),
                  
                    title: Text(candysnacksController.titleList[index]),
                    subtitle: Text(candysnacksController.subtitleList[index]),
                    trailing: GestureDetector(
                      onTap: () {
                        Get.to(() => CandySnacks());
                      },
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ));
}


}

