import 'package:distrobo1/routs/route.dart';
import 'package:distrobo1/routs/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) { 
        return SafeArea(
          child: GetMaterialApp(
                 
          debugShowCheckedModeBanner: false, 

          initialRoute: RouteName.splash,
          getPages: Routee.routeList,
                // home: HomeScreen(),
                ),
        );
      }
    );
  }
}


