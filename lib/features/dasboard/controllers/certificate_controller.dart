import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:new_version_plus/new_version_plus.dart';
import 'package:plp/core/models/scanner_check_certificate_model/scanner_check_certificate_model.dart';
import 'package:plp/core/services/api_service.dart';
import 'package:plp/routes/app_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CertificateController extends GetxController {
  final ApiService _apiService = Get.find();
  var certificate = Rxn<CheckCertificateModel>();
  var isLoading = false.obs;
  var scannedCode = ''.obs;

  MobileScannerController scannerController = MobileScannerController();

  @override
  void onInit() {
    super.onInit();
    _checkForUpdate();
    startScanner();
  }

// source code check version in playstore and appstore
  Future<void> _checkForUpdate() async {
    final NewVersion = NewVersionPlus(
      androidId: 'com.example.plp',
      iOSId: 'com.example.plp',
    );
    final status = await NewVersion.getVersionStatus();
    if (status != null && status.canUpdate) {
      NewVersion.showUpdateDialog(
        context: Get.context!,
        versionStatus: status,
        dialogTitle: 'ມີການອັບເດດໃຫມ່',
        dialogText:
            'ກະລຸນາອັບເດດແອັບຂອງທ່ານ ${status.storeVersion} ຈາກ ${status.localVersion}',
        updateButtonText: 'ອັບເດດດຽວນີ້',
        dismissButtonText: 'ຍົກເລີກ',
        dismissAction: () {
          Get.back();
        },
      );
    }
  }

  void startScanner() {
    scannerController = MobileScannerController();
    scannerController.start();
  }

  void stopScanner() {
    scannerController.stop();
  }

  Future<void> fetchCertificate(String certificateId) async {
    try {
      isLoading(true);
      stopScanner();

      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      if (token == null) {
        throw Exception('No token found');
      }

      final response = await _apiService.getCertificate(token, certificateId);
      if (response.statusCode == 200) {
        certificate.value = CheckCertificateModel.fromJson(response.data);
        Get.offNamed(AppRoutes.certificateResult);
      } else {
        throw Exception('Certificate not found');
      }
    } catch (e) {
      Get.dialog(
        AlertDialog(
          title: const Text('ບໍ່ພົບໃບສັນຍາ'),
          content: const Text('ບໍ່ພົບຂໍ້ມູນໃບສັນຍາ\nກະລຸນາກວດສອບຄືນ'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Get.back();
                startScanner();
              },
              child: const Text('ຕົກລົງ'),
            ),
          ],
        ),
      );
    } finally {
      isLoading(false);
    }
  }

  void onDetect(BarcodeCapture capture) {
    if (isLoading.value) return;
    final barcode = capture.barcodes.first;
    if (barcode.rawValue != null) {
      scannedCode.value = barcode.rawValue!;
      fetchCertificate(scannedCode.value);
    }
  }

  @override
  void onClose() {
    scannerController.dispose();
    super.onClose();
  }
}
