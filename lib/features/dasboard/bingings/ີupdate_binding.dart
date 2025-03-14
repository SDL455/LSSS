import 'package:get/get.dart';
import 'package:plp/features/dasboard/controllers/update_controller.dart';

class UpdateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UpdateController());
  }
}
