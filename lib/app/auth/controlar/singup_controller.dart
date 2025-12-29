import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController2 extends GetxController {



Rx<TextEditingController> nameController = TextEditingController().obs;

Rx<TextEditingController> lastnameController = TextEditingController().obs;
var passwordhide = true.obs;
   RxList dropdownlist = [
    "Ex. Explore the city",
    "list 2 ",
    "list 3",
    "list 4",
    "list 5",
  ].obs;
  RxString newValue = "Ex. Explore the city".obs;
}