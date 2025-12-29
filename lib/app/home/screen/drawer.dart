import 'package:distrobo1/app/home/controlar/drawer_controller.dart';
import 'package:distrobo1/utils/colors.dart';
import 'package:distrobo1/utils/text_style.dart';
import 'package:distrobo1/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  final  appDrawerController = Get.put(AppDrawerController());
  @override
  Widget build(BuildContext context) {
    return  Drawer(
        width: 52.w,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 22.h,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Mycolor.buttoncolor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Mycolor.backgroundcolor,width: 2)
                  ),
                    child: ClipRRect( 
                      borderRadius: BorderRadius.circular(50,),
                    
                      child: Image.asset(
                        "assets/images/profile.png",
                        height: 8.h,
                        width: 8.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text('John Due', style: MyTextStyle.gilroyBoldW414redcolor.copyWith(
                    color: Mycolor.appbackgroundcolor
                  )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('6391 Elgin St. Celina, Delaware 10299',
                          style: MyTextStyle.gilroyBoldW414redcolor.copyWith(
                    color: Mycolor.appbackgroundcolor, fontSize: 10
                  ), maxLines: 5,textAlign: TextAlign.center,
                  
                  ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                height: 45.h,
                width: 100.w,
                child: ListView.builder(
                  itemCount: appDrawerController.iconList.length,
                  itemBuilder: (context, index) {
                    return Center(
                      heightFactor: 0.7,
                      child: ListTile(
                        leading: Icon(appDrawerController.iconList[index],color: Mycolor.buttoncolor,),
                        title: Row(
                          children: [
                            Text(appDrawerController.titleList[index],
                            style: MyTextStyle.gilroyMediumW414titlecolor,
                            ),
                          ],
                        ),
                        onTap: () {

                          
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 30),
              child: RoundedButton(
                btnName: "Logout",
               
                onchange: () {},
                borderRadiusc: 10,
               buttonHeight: 12.w,
                textStyle: MyTextStyle.gilroyBoldW420buttonTextcolor
                    .copyWith(color: Mycolor.appbackgroundcolor,  ),
              ),
            ),
          ],
        ),
      
    );
  }
}
