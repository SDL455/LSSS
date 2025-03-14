import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plp/core/bindings/app_binding.dart';
import 'package:plp/routes/app_pages.dart';
import 'package:plp/routes/app_rotes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LPP',
      initialRoute: AppRoutes.login,
      getPages: AppPages.pages,
      initialBinding: AppBinding(),
    );
  }
}
