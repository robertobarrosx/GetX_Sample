import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'themes/themes.dart';
import 'translation/translation.dart';
import 'routes/app_pages.dart';
import 'dart:ui' as ui;

Future<void> main() async {
  await GetStorage.init();
  runApp(GetMaterialApp(
    locale: ui.window.locale,
    translations: Messages(),
    fallbackLocale: Locale('en', 'US'),
    debugShowCheckedModeBanner: false,
    theme: MyThemes().light,
    darkTheme: MyThemes().dark,
    themeMode: ThemeMode.system,
    getPages: AppPages.routes,
    initialRoute: Routes.HOME,
  ));
}
