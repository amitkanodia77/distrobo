import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {


Rx<TextEditingController> emailController = TextEditingController().obs;
Rx<TextEditingController> passwordController = TextEditingController().obs;
Rx<TextEditingController> nameController = TextEditingController().obs;
 var passwordhide = true.obs;

}