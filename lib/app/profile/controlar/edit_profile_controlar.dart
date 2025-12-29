
import 'package:distrobo1/widget/edit_profile_bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {
  List<String> editprofileimagelist = [
    "assets/images/Name.png",
    "assets/images/Phone Number.png",
    "assets/images/Email ID.png",
    "assets/images/Password.png",
    "assets/images/Address.png",
  ].obs;

  List<String> editprofilenamelist = [
    "Name",
    "Phone Number",
    "Email ID",
    "Password",
    "Address",
  ].obs;

  List<String> editprofilehintText = [
    "House/Building No",
    "Enter Street Name",
    "Enter Area",
    "Enter Country",
    "Enter State",
    "Enter City",
    "Enter Pincode",
  ].obs;

  List<String> editprofileTextlist = [
    "House/Building No",
    "Street Name",
    "Area",
    "Country",
    "State",
    "City",
    "Pincode",
  ].obs;
  List<String> profilesubdetaillist = [
    "John Due",
    "9876543210",
    "userdemo@gmail.com",
    "Change Password",
    "6391 Elgin St. Celina, Delaware 10299",
  ].obs;
  List<IconData> editprofileiconlist = [
    Icons.home_outlined,
    Icons.streetview_outlined,
    Icons.map_outlined,
    Icons.flag_outlined,
    Icons.map_outlined,
    Icons.location_city_outlined,
    Icons.local_post_office_outlined,
  ].obs;
  final List<Function(BuildContext)> editprofilespopupList = [
    name,
    phonenumber,
    email,
    password,
    address,
  ];

  var passwordhide = true.obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;
}
