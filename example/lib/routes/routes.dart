import 'package:get/get.dart';
import '../bindings/home_binding.dart';
import '../views/HomePage.dart';

abstract class Routes {
  static const HOME = '/home';
}

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding())
  ];
}
