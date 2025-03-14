import 'package:get/get.dart';
import 'package:plp/core/services/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UpdateController extends GetxController {
  final ApiService _apiService = Get.find();
  var isLoading = false.obs;

  Future<void> updateUser(String firstName) async {
    try {
      isLoading(true);

      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      if (token == null) {
        throw Exception('No token found');
      }

      final response = await _apiService.updateUser(
        token,
        {
          'firstName': firstName,
        },
      );

      Get.snackbar('Success', 'Update successful: ${response.data}');
    } catch (e) {
      Get.snackbar('Error', 'Update failed: $e');
    } finally {
      isLoading(false);
    }
  }
}
