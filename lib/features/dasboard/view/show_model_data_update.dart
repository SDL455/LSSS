// import 'package:flutter/material.dart';
// import 'package:plp/features/auth/controllers/auth_controller.dart';
// import 'package:plp/features/auth/views/widget/button_widget.dart';
// import 'package:plp/features/dasboard/view/widget/buttom_text_form_field.dart';

// class showmodeldataupdate extends StatelessWidget {
//   const showmodeldataupdate({
//     super.key,
//     required this.authController,
//   });

//   final AuthController authController;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(32.0),
//       child: Container(
//         height: MediaQuery.of(context).size.height * 0.8,
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Center(
//                 child: Container(height: 4, width: 40, color: Colors.grey),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 8.0),
//                 child: Text(
//                   'ຊື່(ພາສາລາວ)',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               ButtomTextFormField(
//                 label: authController.user.value?.firstName ?? '',
//                 enabled: true,
//                 controller: TextEditingController(),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 8.0),
//                 child: Text(
//                   'ນາມສະກຸນ(ພາສາລາວ)',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               ButtomTextFormField(
//                 label: authController.user.value?.lastName ?? '',
//                 enabled: true,
//                 controller: TextEditingController(),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 8.0),
//                 child: Text(
//                   'ຊື່(ພາສາອັງກິດ)',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               ButtomTextFormField(
//                 label: authController.user.value?.firstNameEn ?? '',
//                 enabled: true,
//                 controller: TextEditingController(),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 8.0),
//                 child: Text(
//                   'ນາມສະກຸນ(ພາສາອັງກິດ)',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               ButtomTextFormField(
//                 label: authController.user.value?.firstNameEn ?? '',
//                 enabled: true,
//                 controller: TextEditingController(),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 8.0),
//                 child: Text(
//                   'ແຂວງ(ບ່ອນເກີດ)',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               ButtomTextFormField(
//                 label: authController.user.value?.birthProvince ?? '',
//                 enabled: true,
//                 controller: TextEditingController(),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 8.0),
//                 child: Text(
//                   'ເມືອງ(ບ່ອນເກີດ)',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               ButtomTextFormField(
//                 label: authController.user.value?.birthDistrict ?? '',
//                 enabled: true,
//                 controller: TextEditingController(),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 8.0),
//                 child: Text(
//                   'ບ້ານ(ບ່ອນເກີດ)',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               ButtomTextFormField(
//                 label: authController.user.value?.birthVillage ?? '',
//                 enabled: true,
//                 controller: TextEditingController(),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 8.0),
//                 child: Text(
//                   'ແຂວງ(ປະຈຸບັນ)',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               ButtomTextFormField(
//                 label: authController.user.value?.currentProvince ?? '',
//                 enabled: true,
//                 controller: TextEditingController(),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 8.0),
//                 child: Text(
//                   'ເມືອງ(ປະຈຸບັນ)',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               ButtomTextFormField(
//                 label: authController.user.value?.currentDistrict ?? '',
//                 enabled: true,
//                 controller: TextEditingController(),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 8.0),
//                 child: Text(
//                   'ບ້ານ(ປະຈຸບັນ)',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               ButtomTextFormField(
//                 label: authController.user.value?.currentVillage ?? '',
//                 enabled: true,
//                 controller: TextEditingController(),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 8.0),
//                 child: Text(
//                   'ບ້ານ(ບ່ອນເກີດ)',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               ButtomTextFormField(
//                 label: authController.user.value?.birthVillage ?? '',
//                 enabled: true,
//                 controller: TextEditingController(),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 8.0),
//                 child: Text(
//                   'ເບີໂທ',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               ButtomTextFormField(
//                 label: authController.user.value?.tel ?? '',
//                 enabled: true,
//                 controller: TextEditingController(),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 8.0),
//                 child: Text(
//                   'ເບີໂທ(ວອດແອັບ)',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               ButtomTextFormField(
//                 label: authController.user.value?.phone ?? '',
//                 enabled: true,
//                 controller: TextEditingController(),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 8.0),
//                 child: Text(
//                   'ອາຍຸ',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               ButtomTextFormField(
//                 label: authController.user.value?.age?.toString() ?? '',
//                 enabled: true,
//                 controller: TextEditingController(),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 8.0),
//                 child: Text(
//                   'ວັນເດືອນປີເກີດ',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               ButtomTextFormField(
//                 label: authController.user.value?.birthday?.toString() ?? '',
//                 enabled: true,
//                 controller: TextEditingController(),
//               ),
//               SizedBox(
//                 height: 8,
//               ),
//               ButtonWidget(
//                 label: 'ບັນທຶກຂໍ້ມູນ',
//                 onPressed: () {},
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// lib/features/dashboard/view/showmodeldataupdate.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plp/features/auth/controllers/auth_controller.dart';
import 'package:plp/features/auth/views/widget/button_widget.dart';
import 'package:plp/features/dasboard/controllers/update_controller.dart';
import 'package:plp/features/dasboard/view/widget/buttom_text_form_field.dart';

class ShowModelDataUpdate extends StatelessWidget {
  final UpdateController updateController = Get.find();
  final TextEditingController firstNameController = TextEditingController();
  final AuthController authController;

  ShowModelDataUpdate({
    super.key,
    required this.authController,
  }) {
    // ກຳນົດຄ່າເລີ່ມຕົ້ນໃຫ້ TextEditingController
    firstNameController.text = authController.user.value?.firstName ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(height: 4, width: 40, color: Colors.grey),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'ຊື່ (ພາສາລາວ)',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ButtomTextFormField(
                label: authController.user.value?.firstName ?? '',
                enabled: true,
                controller: firstNameController,
              ),
              SizedBox(height: 8),
              Obx(
                () => updateController.isLoading.value
                    ? CircularProgressIndicator()
                    : ButtonWidget(
                        label: 'ບັນທຶກຂໍ້ມູນ',
                        onPressed: () {
                          // ເອີ້ນ Method updateUser ໃນ UpdateController
                          updateController.updateUser(firstNameController.text);
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
