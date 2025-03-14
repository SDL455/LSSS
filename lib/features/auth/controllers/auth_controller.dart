// lib/features/auth/controllers/auth_controller.dart
import 'package:get/get.dart';
import 'package:plp/core/models/user_model/user_model.dart';
import 'package:plp/core/services/auth_service.dart';
import 'package:plp/routes/app_rotes.dart';

class AuthController extends GetxController {
  final AuthService _authService = Get.find();
  var isLoading = false.obs;
  var user = Rxn<UserModel>();


  Future<void> login(String username, String password) async {
    try {
      print('Starting login with username: $username');
      isLoading(true);
      final userData = await _authService.login(username, password);
      print('Login successful: ${userData.toJson()}');
      user.value = userData;
      Get.snackbar('ຂໍ້ຄວາມ', 'ເຂົ້າລະບົບສຳເລັດແລ້ວ');
      print('Navigating to dashboard');
      Get.offNamed(AppRoutes.dashboard);
    } catch (e) {
      // print('Login error: $e');
      Get.snackbar('ເກີດຂໍ້ຜິດພາດ', 'ລະຫັດບໍ່ຖຶກຕ້ອງລອງໃຫມ່ອີກຄັ້ງ');
    } finally {
      isLoading(false);
    }
  }

  Future<void> logout() async {
    await _authService.logout();
    user.value = null;
    Get.offNamed(AppRoutes.login);
  }
}
