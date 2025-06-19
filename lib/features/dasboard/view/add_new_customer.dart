import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plp/core/color/app_colors.dart';

class AddNewCustomer extends StatelessWidget {
  const AddNewCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColor.primaryColor,
        title: Text(
          'ເພີ່ມລູກຄ້າ',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text('Add New Customer'),
        ],
      ),
    );
  }
}
