import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:plp/core/color/app_colors.dart';
import 'package:plp/features/auth/controllers/auth_controller.dart';
import 'package:plp/features/dasboard/controllers/dashboard_controller.dart';
import 'package:plp/features/dasboard/controllers/report_customer_controller.dart';
import 'package:plp/features/dasboard/controllers/report_customer_type_controller.dart';
import 'package:plp/features/dasboard/view/card_view.dart';
import 'package:plp/features/dasboard/view/certificate_result.dart';
import 'package:plp/features/dasboard/view/details_customer_view.dart';
import 'package:plp/features/dasboard/view/drawer_view.dart';
import 'package:plp/features/dasboard/view/widget/container_widget.dart';
import 'package:plp/features/dasboard/view/widget/listtile_widget.dart';

class DashboardView extends StatelessWidget {
  final AuthController authController = Get.find();
  final DashboardController dashboardController = Get.find();
  final ReportCustomerController reportCustomerController = Get.find();
  final ReportCustomerTypeController reportCustomerTypeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        elevation: 0,
        title: Text(
          'ໜ້າຫຼັກ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      drawer: DrawerView(authController: authController),
      body: Obx(
        () => dashboardController.isLoading.value ||
                reportCustomerController.isLoading.value ||
                reportCustomerTypeController.isLoading.value
            ? Center(
                child: CircularProgressIndicator(
                  color: AppColor.primaryColor,
                ),
              )
            : dashboardController.reportData.value == null ||
                    reportCustomerController.reportCustomer.value == null ||
                    reportCustomerTypeController.reportCustomerType.value ==
                        null
                ? Center(
                    child: Text(
                      'ບໍ່ມີຂໍ້ມູນ',
                      style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                    ),
                  )
                : RefreshIndicator(
                    onRefresh: () async => dashboardController.fetchUsers(),
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'ຂໍ້ມູນພະນັກງານ',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ContainerWidget(
                            textcoustomer: 'ພະນັກງານທັງໝົດ',
                            textamout:
                                '${dashboardController.reportData.value!.totalEmployee ?? 'ບໍ່ມີຂໍ້ມູນ'} ຄົນ',
                            textprovince:
                                'ຊາຍ: ${dashboardController.reportData.value!.groupByGender?.first.total ?? 'ບໍ່ມີຂໍ້ມູນ'} ຄົນ',
                            textoutprovince:
                                'ຍິງ: ${dashboardController.reportData.value!.groupByGender?.elementAt(1).total ?? 'ບໍ່ມີຂໍ້ມູນ'} ຄົນ',
                          ),
                          ListtileWidget(
                            title: 'ພະນັກງານທົ່ວໄປ',
                            image: 'assets/icon2.png',
                            trailingText:
                                '${dashboardController.reportData.value!.groupByEmployeeType?.first.total ?? 'ບໍ່ມີຂໍ້ມູນ'} ຄົນ',
                          ),
                          ListtileWidget(
                            title: 'ພະນັກງານສາຍກວດ',
                            image: 'assets/icon3.png',
                            trailingText:
                                '${dashboardController.reportData.value!.groupByEmployeeType?.elementAt(1).total ?? 'ບໍ່ມີຂໍ້ມູນ'} ຄົນ',
                          ),
                          ListtileWidget(
                            title: ' ພະນັກງານຮັກສາຄວາມປອດໄພ',
                            image: 'assets/icon1.png',
                            trailingText:
                                '${dashboardController.reportData.value!.groupByEmployeeType?.last.total ?? 'ບໍ່ມີຂໍ້ມູນ'} ຄົນ',
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'ຂໍ້ມູນລູກຄ້າ',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              ContainerWidget(
                                textcoustomer: 'ລູກຄ້າທັງໝົດ',
                                textamout:
                                    '${reportCustomerController.reportCustomer.value?.total} ຄົນ',
                                textprovince:
                                    'ນະຄອນຫຼວງ: ${reportCustomerController.reportCustomer.value?.vientianeCustomers ?? "ບໍ່ມີຂໍ້ມູນ"} ຄົນ',
                                textoutprovince:
                                    'ຕ່າງແຂວງ: ${reportCustomerController.reportCustomer.value?.nonVientianeCustomers ?? 'ບໍ່ມີຂໍ້ມູນ'} ຄົນ',
                              ),
                              SizedBox(height: 10),
                              GestureDetector(
                                onTap: () {
                                  Get.to(DetailsCustomer());
                                },
                                child: Card(
                                  child: ListTile(
                                    leading: FaIcon(
                                      FontAwesomeIcons.users,
                                      color: Colors.red,
                                      size: 25,
                                    ),
                                    title: Text(
                                      'ປະເພດລູກຄ້າທັງໝົດ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text(
                                      '${reportCustomerTypeController.reportCustomerType.value?.totalType ?? 'ບໍ່ມີຂໍ້ມູນ'} ປະເພດ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    trailing: Icon(Icons.arrow_forward_ios,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
      ),
      floatingActionButton: SpeedDial(
        backgroundColor: AppColor.primaryColor,
        foregroundColor: Colors.white,
        icon: Icons.add,
        activeIcon: Icons.close,
        children: [
          SpeedDialChild(
            labelWidget: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "ກວດສອບດ້ວຍ QR code",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  // fontSize: 16,
                ),
              ),
            ),
            labelStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            labelBackgroundColor: AppColor.primaryColor,
            shape: CircleBorder(),
            backgroundColor: AppColor.primaryColor,
            child: Icon(
              Icons.qr_code_scanner_outlined,
              color: Colors.white,
            ),
            onTap: () {
              Get.to(certificateResult());
            },
          ),
          SpeedDialChild(
            labelWidget: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "ກວດສອບດ້ວຍລະຫັດ",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  // fontSize: 16,
                ),
              ),
            ),
            labelBackgroundColor: AppColor.primaryColor,
            labelStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            shape: CircleBorder(),
            backgroundColor: AppColor.primaryColor,
            child: Icon(
              Icons.insert_drive_file,
              color: Colors.white,
            ),
            onTap: () {
              _showNumberCheckDialog();
            },
          ),
        ],
      ),
    );
  }
}

void _showNumberCheckDialog() {
  TextEditingController numberController = TextEditingController();

  Get.dialog(
    AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      title: Text("ປ້ອນຕົວເລກ"),
      content: TextField(
        controller: numberController,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: "ໃສ່ຕົວເລກ...",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: Text("ຍົກເລີກ"),
        ),
        ElevatedButton(
          onPressed: () {
            Get.to(CardView());
          },
          child: Text("ກວດສອບ"),
        ),
      ],
    ),
  );
}
