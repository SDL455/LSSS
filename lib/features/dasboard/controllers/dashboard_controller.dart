import 'package:get/get.dart';
import 'package:plp/core/models/report_user_model/report_user_model.dart';
import 'package:plp/core/services/api_service.dart';
import 'package:plp/core/services/auth_service.dart';

class DashboardController extends GetxController {
  final ApiService _apiService = Get.find();
  final AuthService _authService = Get.find();
  var reportData = Rxn<ReportUserModel>();
  var isLoading = false.obs;

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  Future<void> fetchUsers() async {
    try {
      isLoading(true);
      final token = await _authService.getToken();
      if (token != null) {
        final data = await _apiService.getUsers(token);
        reportData.value = data;
      } else {
        Get.snackbar('Error', 'No token found');
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to load users: $e');
    } finally {
      isLoading(false);
    }
  }
}
