import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plp/core/color/app_colors.dart';
import 'package:plp/features/dasboard/view/widget/option_button.dart'
    show OptionButton;
// import 'package:plp/features/auth/controllers/auth_controller.dart';
import 'package:plp/routes/app_routes.dart';

class UserDataView extends StatelessWidget {
  const UserDataView({super.key});

  void _showOptionsPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          title: const Text(
            '',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              OptionButton(
                title: 'ເພີ່ມລູກຄ້າໃໝ່',
                icon: Icons.person_add,
                onPressed: () {
                  Navigator.of(context).pop();
                  Get.toNamed(AppRoutes.addNewCustomer);
                },
              ),
              const SizedBox(height: 12),
              OptionButton(
                title: 'Filter',
                icon: Icons.filter_list,
                onPressed: () {
                  Navigator.of(context).pop();
                  _showFilterDialog(context);
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'ຍົກເລີກ',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showFilterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          title: const Text(
            'ກັ່ນຕອງຂໍ້ມູນ',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildFilterOption('ທັງໝົດ', () {
                Navigator.of(context).pop();
                // Add filter logic here
              }),
              _buildFilterOption('ລູກຄ້າທົ່ວໄປ', () {
                Navigator.of(context).pop();
                // Add filter logic here
              }),
              _buildFilterOption('ລູກຄ້າທົ່ວໄປ', () {
                Navigator.of(context).pop();
                // Add filter logic here
              }),
              _buildFilterOption('ລູກຄ້າທົ່ວໄປ', () {
                Navigator.of(context).pop();
                // Add filter logic here
              }),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'ຍົກເລີກ',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildFilterOption(String title, VoidCallback onPressed) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 8),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[100],
          foregroundColor: Colors.black87,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // final AuthController authController = Get.find<AuthController>();

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
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _showOptionsPopup(context);
            },
            icon: const Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
