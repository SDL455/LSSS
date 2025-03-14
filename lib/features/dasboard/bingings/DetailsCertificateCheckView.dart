import 'package:get/get.dart';
import 'package:plp/features/dasboard/controllers/certificate_controller.dark';

class Detailscertificatecheckview extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CertificateController>(() => CertificateController());
  }
}
