import 'package:distrobo1/app/auth/screen/login_screen.dart';
import 'package:get/get.dart';

class ProfileControlle extends GetxController {
  List<String> profileimagelist = [
    "assets/images/Name.png",
    "assets/images/Phone Number.png",
    "assets/images/Email ID.png",
    "assets/images/Password.png",
    "assets/images/Address.png",
    "assets/images/logout.png",
  ].obs;

  List<String> profilenamelist = [
    "Name",
    "Phone Number",
    "Email ID",
    "Password",
    "Address",
    "logout",
  ].obs;

  List<String> profilesubdetaillist = [
    "John Due",
    "9876543210",
    "userdemo@gmail.com",
    "Change Password",
    "6391 Elgin St. Celina, Delaware 10299",
    "",
  ].obs;

  void logout() {
    Get.offAll(() => LoginScreen());
  }
}
