import 'package:get/get.dart';
import 'package:plp/features/dasboard/controllers/dashboard_controller.dart';
import 'package:plp/features/dasboard/controllers/report_customer_controller.dart';
import 'package:plp/features/dasboard/controllers/report_customer_type_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => ReportCustomerController(), fenix: true);
    Get.lazyPut(() => ReportCustomerTypeController(), fenix: true);
  }
}
