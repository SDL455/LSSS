import 'package:get/get.dart';
import 'package:plp/core/models/report_customer_type_model/report_customer_type_model.dart';
import 'package:plp/core/services/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ReportCustomerTypeController extends GetxController {
  final ApiService _apiService = Get.find();
  var reportCustomerType = Rxn<ReportCustomersType>();
  var isLoading = false.obs;

  @override
  void onInit() {
    fetchCustomerTypes();
    super.onInit();
  }

  Future<void> fetchCustomerTypes() async {
    try {
      isLoading(true);
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      if (token == null) {
        throw Exception('No token found');
      }

      final response = await _apiService.getCustomerTypes(token);
      reportCustomerType.value = ReportCustomersType.fromJson(response.data);
    } catch (e) {
      print('Fetch Customers Error: $e');
      Get.snackbar('Error', 'Failed to load customer data: $e');
    } finally {
      isLoading(false);
    }
  }
}
