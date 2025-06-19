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
    String? selectedCustomerType;
    String? selectedProvince;
    final TextEditingController searchController = TextEditingController();
    final List<String> customerTypes = [
      'ປະເພດ A',
      'ປະເພດ B',
      'ປະເພດ C'
    ]; // Example data
    final List<String> provinces = [
      'ກະຊວງ 1',
      'ກະຊວງ 2',
      'ກະຊວງ 3'
    ]; // Example data

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
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
                textAlign: TextAlign.left,
              ),
              content: SizedBox(
                width: 400,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Search Field
                    TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        hintText:
                            'ຄົ້ນຫາຕາມຊື່ລູກຄ້າ ຊື່ ນາມສະກຸນ ລະຫັດລູກຄ້າ ລະຫັດບັດລູກຄ້າ....',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 12),
                      ),
                    ),
                    const SizedBox(height: 18),
                    // Customer Type Dropdown
                    const Text('ປະເພດລູກຄ້າ'),
                    const SizedBox(height: 6),
                    DropdownButtonFormField<String>(
                      value: selectedCustomerType,
                      isExpanded: true,
                      hint: const Text('ກະລຸນາເລືອກປະເພດລູກຄ້າ'),
                      items: customerTypes.map((type) {
                        return DropdownMenuItem<String>(
                          value: type,
                          child: Text(type),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedCustomerType = value;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 12),
                      ),
                    ),
                    const SizedBox(height: 18),
                    // Province Dropdown
                    const Text('ແຂວງ'),
                    const SizedBox(height: 6),
                    DropdownButtonFormField<String>(
                      value: selectedProvince,
                      isExpanded: true,
                      hint: const Text('ກະລຸນາເລືອກແຂວງ'),
                      items: provinces.map((province) {
                        return DropdownMenuItem<String>(
                          value: province,
                          child: Text(province),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedProvince = value;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 12),
                      ),
                    ),
                  ],
                ),
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
                ElevatedButton(
                  onPressed: () {
                    // Handle filter logic here
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text(
                    'ຕົກລົງ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            );
          },
        );
      },
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
