import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/SettingsController.dart';
import '../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Sample'.tr),
        actions: [
          IconButton(
            icon: Icon(
              !Get.find<SettingsController>().isDarkModeOn
                  ? (Icons.brightness_2)
                  : (Icons.brightness_7),
            ),
            onPressed: () => Get.find<SettingsController>().changeTheme(),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 40, 16, 30),
              child: Text(
                'Description'.tr,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            Center(
              child: Obx(() => controller.isPalindromo
                  ? Text(
                      "isPalidrome".tr,
                      style: TextStyle(color: Colors.green),
                    )
                  : Text(
                      controller.word.length < 2 ? "" : "notPalindrome".tr,
                      style: TextStyle(color: Colors.red),
                    )),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                onChanged: (value) => controller.verifyPalindromo(value),
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                maxLines: 1,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'homeTextField'.tr,
                    labelText: 'homeTextField'.tr),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
