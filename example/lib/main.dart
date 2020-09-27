import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import './routes/routes.dart';
import './themes/themes.dart';
import './translation/translation.dart';
import 'dart:ui' as ui;

Future<void> main() async {
  await GetStorage.init();
  runApp(GetMaterialApp(
    translations: Messages(),
    // locale: ui.window.locale,]
    locale: Locale('en', 'US'),
    fallbackLocale: Locale('en', 'US'),
    debugShowCheckedModeBanner: false,
    theme: MyThemes().light,
    darkTheme: MyThemes().dark,
    themeMode: ThemeMode.system,
    getPages: AppPages.pages,
    initialRoute: Routes.HOME,
  ));
}
