import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:plp/core/color/app_colors.dart';
import 'package:plp/features/dasboard/controllers/certificate_controller.dart';
import 'package:plp/features/dasboard/view/widget/certificate_details.dart';

class certificateResult extends StatelessWidget {
  final CertificateController certificateController =
      Get.put(CertificateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'ສະແກນ',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        backgroundColor: AppColor.primaryColor,
      ),
      body: Obx(
        () => Column(
          children: [
            Expanded(
              child: MobileScanner(
                controller: certificateController.scannerController,
                onDetect: certificateController.onDetect,
              ),
            ),
            if (certificateController.isLoading.value)
              Center(
                  child:
                      CircularProgressIndicator(color: AppColor.primaryColor))
            else if (certificateController.certificate.value != null)
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text(
                            'ຂໍ້ມູນສັນຍາ',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey[900],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '${certificateController.certificate.value!.customerId ?? 'ບໍ່ມີຂໍ້ມູນ'}',
                            style: TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey[600],
                            ),
                          ),
                          const SizedBox(height: 16),
                          Divider(
                            thickness: 2,
                            color: Colors.blueGrey[300],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      CertificateDetailRow(
                        icon: Icons.pin_drop_rounded,
                        title: 'ທີ່ຢູ່',
                        value:
                            '${certificateController.certificate.value!.location ?? 'ບໍ່ມີຂໍ້ມູນ'}',
                      ),
                      CertificateDetailRow(
                        icon: Icons.date_range,
                        title: 'ວັນທີເລີ່ມ',
                        value:
                            '${certificateController.certificate.value!.startDate ?? 'ບໍ່ມີຂໍ້ມູນ'}',
                      ),
                      CertificateDetailRow(
                        icon: Icons.date_range,
                        title: 'ວັນທີໝົດອາຍຸ',
                        value:
                            '${certificateController.certificate.value!.endDate ?? 'ບໍ່ມີຂໍ້ມູນ'}',
                      ),
                      CertificateDetailRow(
                        icon: Icons.payments,
                        title: 'ຈ່າຍເປັນເງືອນ',
                        value: 'ລາຍເດືອນ',
                      ),
                      CertificateDetailRow(
                        icon: Icons.payments,
                        title: 'ຈ່າຍພ້ອມກັນ',
                        value: 'ບໍ່ມີ',
                      ),
                      CertificateDetailRow(
                        icon: Icons.account_balance_wallet,
                        title: 'ຍອດເງິນ',
                        value:
                            '${certificateController.certificate.value!.amount ?? 'ບໍ່ມີຂໍ້ມູນ'}',
                        isPrice: true,
                      ),
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
