import 'package:get/get.dart';
import 'package:plp/features/dasboard/controllers/report_customer_controller.dart';

class ReportCustomerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReportCustomerController());
  }
}
