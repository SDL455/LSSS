import 'package:get/get.dart';
import 'package:plp/core/models/report_customer_model/report_customer_model.dart';
import 'package:plp/core/services/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ReportCustomerController extends GetxController {
  final ApiService _apiService = Get.find();
  var reportCustomer = Rxn<ReportCustomerModel>();
  var isLoading = false.obs;

  @override
  void onInit() {
    fetchCustomers();
    super.onInit();
  }

  Future<void> fetchCustomers() async {
    try {
      isLoading(true);
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      if (token == null) {
        throw Exception('No token found');
      }

      final response = await _apiService.getCustomers(token);
      reportCustomer.value = ReportCustomerModel.fromJson(response.data);
      print('Parsed Customer Data: ${reportCustomer.value?.toJson()}');
      print('Total: ${reportCustomer.value?.total}');
      print('Vientiane: ${reportCustomer.value?.vientianeCustomers}');
      print('Non-Vientiane: ${reportCustomer.value?.nonVientianeCustomers}');
    } catch (e) {
      print('Fetch Customers Error: $e');
      Get.snackbar('Error', 'Failed to load customer data: $e');
    } finally {
      isLoading(false);
    }
  }
}
