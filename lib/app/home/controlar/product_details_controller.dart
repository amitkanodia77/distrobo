import 'package:get/get.dart';

class ProductDetailsController extends GetxController {
  
  RxInt quantity = 0.obs;

  void addToCart() {
    quantity.value = 1;
  }

  void increment() {
    quantity.value++;
  }

  void decrement() {
    if (quantity.value > 1) {
      quantity.value--;
    } else {
      quantity.value = 0; 
    }
  }
}

