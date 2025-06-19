import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plp/core/color/app_colors.dart';
import 'package:plp/features/auth/controllers/auth_controller.dart';
import 'package:plp/routes/app_routes.dart';

class UserDataView extends StatelessWidget {
  const UserDataView({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.find<AuthController>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: const Text(
          'ຂໍ້ມູນລູກຄ້າ',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.toNamed(AppRoutes.dashboard);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
