import 'package:get/get.dart';
import 'package:plp/core/services/auth_service.dart';
import 'package:plp/features/auth/controllers/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => AuthService(),
      fenix: true,
    );
    Get.lazyPut(
      () => AuthController(),
      fenix: true,
    );
  }
}
