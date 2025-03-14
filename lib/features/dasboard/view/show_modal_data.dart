import 'package:flutter/material.dart';
import 'package:plp/features/auth/controllers/auth_controller.dart';
import 'package:plp/features/auth/views/widget/button_widget.dart';
import 'package:plp/features/dasboard/view/show_model_data_update.dart';
import 'package:plp/features/dasboard/view/widget/buttom_text_form_field.dart';

class ModalBottomData extends StatelessWidget {
  const ModalBottomData({
    super.key,
    required this.authController,
  });

  final AuthController authController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(32.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.8,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child:
                            Container(height: 4, width: 40, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'ຊື່(ພາສາລາວ)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ButtomTextFormField(
                        label: authController.user.value?.firstName ?? '',
                        enabled: false,
                        controller: TextEditingController(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'ນາມສະກຸນ(ພາສາລາວ)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ButtomTextFormField(
                        label: authController.user.value?.lastName ?? '',
                        enabled: false,
                        controller: TextEditingController(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'ຊື່(ພາສາອັງກິດ)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ButtomTextFormField(
                        label: authController.user.value?.firstNameEn ?? '',
                        enabled: false,
                        controller: TextEditingController(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'ນາມສະກຸນ(ພາສາອັງກິດ)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ButtomTextFormField(
                        label: authController.user.value?.firstNameEn ?? '',
                        enabled: false,
                        controller: TextEditingController(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'ແຂວງ(ບ່ອນເກີດ)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ButtomTextFormField(
                        label: authController.user.value?.birthProvince ?? '',
                        enabled: false,
                        controller: TextEditingController(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'ເມືອງ(ບ່ອນເກີດ)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ButtomTextFormField(
                        label: authController.user.value?.birthDistrict ?? '',
                        enabled: false,
                        controller: TextEditingController(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'ບ້ານ(ບ່ອນເກີດ)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ButtomTextFormField(
                        label: authController.user.value?.birthVillage ?? '',
                        enabled: false,
                        controller: TextEditingController(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'ແຂວງ(ປະຈຸບັນ)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ButtomTextFormField(
                        label: authController.user.value?.currentProvince ?? '',
                        enabled: false,
                        controller: TextEditingController(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'ເມືອງ(ປະຈຸບັນ)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ButtomTextFormField(
                        label: authController.user.value?.currentDistrict ?? '',
                        enabled: false,
                        controller: TextEditingController(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'ບ້ານ(ປະຈຸບັນ)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ButtomTextFormField(
                        label: authController.user.value?.currentVillage ?? '',
                        enabled: false,
                        controller: TextEditingController(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'ບ້ານ(ບ່ອນເກີດ)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ButtomTextFormField(
                        label: authController.user.value?.birthVillage ?? '',
                        enabled: false,
                        controller: TextEditingController(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'ເບີໂທ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ButtomTextFormField(
                        label: authController.user.value?.tel ?? '',
                        enabled: false,
                        controller: TextEditingController(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'ເບີໂທ(ວອດແອັບ)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ButtomTextFormField(
                        label: authController.user.value?.phone ?? '',
                        enabled: false,
                        controller: TextEditingController(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'ອາຍຸ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ButtomTextFormField(
                        label: authController.user.value?.age?.toString() ?? '',
                        enabled: false,
                        controller: TextEditingController(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'ວັນເດືອນປີເກີດ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ButtomTextFormField(
                        label:
                            authController.user.value?.birthday?.toString() ??
                                '',
                        enabled: false,
                        controller: TextEditingController(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      ButtonWidget(
                        label: 'ແກ້ໄຂຂໍ້ມູນ',
                        onPressed: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return ShowModelDataUpdate(
                                  authController: authController);
                            },
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
      child: Card(
        elevation: 0,
        child: ListTile(
          leading: const Icon(Icons.account_circle),
          title: const Text('ຂໍ້ມູນບັນຊີ'),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
