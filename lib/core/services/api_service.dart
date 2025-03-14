import 'package:dio/dio.dart';
import 'package:plp/core/models/report_user_model/report_user_model.dart';
import 'package:plp/core/utils/constants.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<Response> login(String username, String password) async {
    try {
      final response = await _dio.post(
        ApiConstants.loginUrl,
        data: {'username': username, 'password': password},
      );
      print('API Response: ${response.data}');
      return response;
    } catch (e) {
      print('API Error: $e');
      rethrow;
    }
  }

  //getUsers
  Future<ReportUserModel> getUsers(String token) async {
    try {
      _dio.options.headers['Authorization'] = 'Bearer $token';
      final response = await _dio.get(ApiConstants.usersUrl);
      return ReportUserModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  // ເພີ່ມທ້າຍໄຟລ໌ຫຼັງ Method ອື່ນໆ
  Future<Response> getCustomers(String token) async {
    try {
      print(
          'Fetching Customers from: ${ApiConstants.reportCustomerUrl}'); // Print URL
      final response = await _dio.get(
        ApiConstants.reportCustomerUrl,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      print('Customers Response: ${response.data}'); // Print Response ດິບ
      return response;
    } catch (e) {
      print('Customers Error: $e'); // Print Error ຖ້າມີ
      rethrow;
    }
  }

  // ເພີ່ມທ້າຍໄຟລ໌ຫຼ report/customers/type
  Future<Response> getCustomerTypes(String token) async {
    try {
      print(
          'Fetching Customer Types from: ${ApiConstants.reportCustomerTypeUrl}'); // Print URL
      final response = await _dio.get(
        ApiConstants.reportCustomerTypeUrl,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      print('Customer Types Response: ${response.data}'); // Print Response ດິບ
      return response;
    } catch (e) {
      print('Customer Types Error: $e'); // Print Error ຖ້າມີ
      rethrow;
    }
  }

  // function scanner for certificate
  Future<Response> getCertificate(String token, String certificateId) async {
    try {
      print(
          'Fetching Certificate from: ${ApiConstants.certificateUrl}/$certificateId'); // ເພີ່ມ Debug URL
      print('Using Token: $token'); // ເພີ່ມ Debug Token
      final response = await _dio.get(
        '${ApiConstants.certificateUrl}/$certificateId',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      print('Certificate Response: ${response.data}');
      return response;
    } catch (e) {
      print('Certificate Error Details: $e');
      if (e is DioException) {
        print('Status Code: ${e.response?.statusCode}');
        print('Response Data: ${e.response?.data}');
      }
      rethrow;
    }
  }

  Future<Response> updateUser(String token, Map<String, dynamic> data) async {
    try {
      final response = await _dio.post(
        ApiConstants.reportCustomerUrl,
        data: data,
        options: Options(
          headers: {
            'Authorization': 'Bearer $token'
          }, // ໃຊ້ Token ສຳລັບ Authentication
        ),
      );
      print('Update Response: ${response.data}');
      return response;
    } catch (e) {
      print('Update Error: $e');
      rethrow;
    }
  }
}
