import 'package:get/get.dart';
import 'package:plp/features/dasboard/controllers/certificate_controller.dart';

class Detailscertificatecheckview extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CertificateController>(() => CertificateController());
  }
}
