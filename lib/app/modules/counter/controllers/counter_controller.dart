import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  final bilangan = 0.obs;

  void tambahSatu() {
    if (bilangan.value >= 20) {
      Get.snackbar('Peringatan', 'Udah ahh cape',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.yellowAccent);
    } else {
      bilangan.value++;
    }
  }

  void kurangSatu() {
    if (bilangan.value <= 0) {
      Get.snackbar('Batas', 'Kurang Terus',
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red);
    } else {
      bilangan.value--;
    }
  }

  void reset() {
    bilangan.value = 0;
    Get.snackbar('Reset', 'Dimulai dari nol');
  }
}
