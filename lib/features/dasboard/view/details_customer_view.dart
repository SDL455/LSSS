import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plp/core/color/app_colors.dart';
import 'package:plp/features/dasboard/controllers/report_customer_type_controller.dart';

class DetailsCustomer extends StatelessWidget {
  final ReportCustomerTypeController reportCustomerTypeController = Get.find();

  DetailsCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'ປະເພດລູກຄ້າ',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        backgroundColor: AppColor.primaryColor,
      ),
      body: Obx(
        () => reportCustomerTypeController.isLoading.value
            ? Center(
                child: CircularProgressIndicator(color: AppColor.primaryColor))
            : reportCustomerTypeController.reportCustomerType.value == null
                ? Center(
                    child: Text(
                      'No data available',
                      style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                    ),
                  )
                : SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ປະເພດລູກຄ້າທັງໝົດ: ${reportCustomerTypeController.reportCustomerType.value!.totalType ?? 'ບໍ່ມີຂໍ້ມູນ'} ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  ListView.builder(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: reportCustomerTypeController
                                            .reportCustomerType
                                            .value!
                                            .customerTypes
                                            ?.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      final customer =
                                          reportCustomerTypeController
                                              .reportCustomerType
                                              .value!
                                              .customerTypes![index];
                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          _buildInfoRow('ຊື່ປະເພດ',
                                              customer.title ?? 'ບໍ່ມີຂໍ້ມູນ'),
                                          _buildInfoRow('ທັງໝົດ',
                                              '${customer.totalCustomer ?? 0} ຄົນ'),
                                          if (index <
                                              (reportCustomerTypeController
                                                      .reportCustomerType
                                                      .value!
                                                      .customerTypes!
                                                      .length -
                                                  1))
                                            Divider(),
                                        ],
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
