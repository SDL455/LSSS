import 'package:plp/core/models/user_model/user_model.dart';
import 'package:plp/core/services/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final ApiService _apiService = ApiService();

  Future<UserModel> login(String username, String password) async {
    final response = await _apiService.login(username, password);
    print('Parsed Response in AuthService: ${response.data}');
    final user = UserModel.fromJson(response.data);
    print('User Model: ${user.toJson()}');
    await _saveToken(user.accessToken!);
    return user;
  }

  Future<void> _saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }

  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
  }
}
