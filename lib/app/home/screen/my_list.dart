import 'package:distrobo1/app/home/controlar/list_controllar.dart';
import 'package:distrobo1/utils/colors.dart';
import 'package:distrobo1/utils/text_style.dart';
import 'package:distrobo1/widget/list_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  final listControllar = Get.put(ListControllar());
  final bool isWishlistEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          
                        }, child: Icon(Icons.arrow_back_ios)),
                    Text(
                      "My List",
                      style: MyTextStyle.GilroySemiBoldW420itemsTextcolor,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "assets/images/bell.png",
                        color: Mycolor.buttoncolor,
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    listControllar.isWishlistEmpty.value
                        ? wishlistEmpty()
                        : shoppingList(),

                   
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
