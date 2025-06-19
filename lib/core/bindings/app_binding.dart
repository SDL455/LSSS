import 'package:get/get.dart';
import 'package:plp/core/services/api_service.dart';
import 'package:plp/core/services/auth_service.dart';
import 'package:plp/features/dasboard/controllers/certificate_controller.dart';
import 'package:plp/features/dasboard/controllers/report_customer_controller.dart';
import 'package:plp/features/dasboard/controllers/report_customer_type_controller.dart';
import 'package:plp/features/dasboard/controllers/update_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApiService(), fenix: true);
    Get.lazyPut(() => AuthService(), fenix: true);
    Get.lazyPut(() => UpdateController(), fenix: true);
    Get.lazyPut(() => ReportCustomerController(), fenix: true);
    Get.lazyPut(() => ReportCustomerTypeController(), fenix: true);
    Get.lazyPut(() => CertificateController(), fenix: true);
  }
}
