import 'package:get/get.dart';

import '../modules/biodata/bindings/biodata_binding.dart';
import '../modules/biodata/views/biodata_view.dart';
import '../modules/counter/bindings/counter_binding.dart';
import '../modules/counter/views/counter_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

// ignore_for_file: prefer_const_constructors, constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.COUNTER,
      page: () => CounterView(),
      binding: CounterBinding(),
    ),
    GetPage(
      name: _Paths.BIODATA,
      page: () => const BiodataView(),
      binding: BiodataBinding(),
    ),
  ];
}
