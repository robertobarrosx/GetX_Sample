import 'package:get/get.dart';
import '../bindings/home_binding.dart';
import '../views/HomePage.dart';

abstract class Routes {
  static const INITIAL = '/';
  static const HOME = '/home';
  static const LOGIN = '/login';
  static const CADASTRO = '/cadastro';
}

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding())
  ];
}
