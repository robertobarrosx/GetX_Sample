import 'package:get/get.dart';
import '../bindings/home_binding.dart';
import '../views/HomePage.dart';

part 'app_routes.dart';

abstract class AppPages {
  static final routes = [
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding())
  ];
}
