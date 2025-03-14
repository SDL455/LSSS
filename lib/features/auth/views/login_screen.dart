import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plp/features/auth/controllers/auth_controller.dart';
import 'package:plp/features/auth/views/widget/header_widget.dart';
import 'package:plp/features/auth/views/widget/input_field.dart';
import 'package:plp/features/auth/views/widget/login_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthController controller = Get.find();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadSavedEmail();
  }

  Future<void> _loadSavedEmail() async {
    final prefs = await SharedPreferences.getInstance();
    final savedEmail = prefs.getString('saved_email');
    if (savedEmail != null) {
      setState(() {
        usernameController.text = savedEmail;
      });
    }
  }

  Future<void> _saveEmail(String email) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('saved_email', email);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(size: size),
            InputField(
              controller: usernameController,
              label: "ອີເມວ",
              hintText: "ກະລຸນາປ້ອນອີເມວ",
              icon: Icons.email,
              isPassword: false,
            ),
            InputField(
              controller: passwordController,
              label: "ລະຫັດ",
              hintText: "ກະລຸນາປ້ອນລະຫັດ",
              icon: Icons.lock,
              isPassword: true,
            ),
            SizedBox(height: 20),
            Obx(
              () => controller.isLoading.value
                  ? CircularProgressIndicator()
                  : LoginButton(
                      onPressed: () {
                        if (usernameController.text.isEmpty ||
                            passwordController.text.isEmpty) {
                          Get.snackbar(
                            'ຂໍ້ຜິດພາດ',
                            'ກະລຸນາປ້ອນອີແມວ ແລະ ເບີໂທກ່ອນ',
                            backgroundColor: Colors.grey,
                            colorText: Colors.black,
                          );
                          return;
                        }
                        print('Login button pressed');
                        _saveEmail(usernameController.text);
                        controller.login(
                          usernameController.text,
                          passwordController.text,
                        );
                      },
                      label: "ເຂົ້າສູ່ລະບົບ",
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
