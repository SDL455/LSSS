import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plp/features/auth/controllers/auth_controller.dart';
import 'package:plp/features/auth/views/widget/login_button.dart';
import 'package:plp/features/dasboard/view/show_modal_data.dart';
import 'package:plp/features/dasboard/view/show_modal_password.dart';
import 'package:plp/routes/app_rotes.dart';

class DrawerView extends StatelessWidget {
  final AuthController authController;
  const DrawerView({super.key, required this.authController});

  static const String baseImageUrl = AppRoutes.baseImageUrl;

  String _buildImageUrl(String? profile) {
    if (profile == null || profile.isEmpty) {
      return '';
    }
    return profile.startsWith('http') ? profile : '$baseImageUrl$profile';
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 16.0,
      child: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://static.vecteezy.com/system/resources/previews/029/470/675/non_2x/ai-generated-ai-generative-purple-pink-color-sunset-evening-nature-outdoor-lake-with-mountains-landscape-background-graphic-art-photo.jpg',
                        ),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.8),
                          BlendMode.dstATop,
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 3.0,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 10,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.grey.shade200,
                            backgroundImage:
                                authController.user.value?.profile != null
                                    ? CachedNetworkImageProvider(
                                        _buildImageUrl(
                                            authController.user.value?.profile),
                                      )
                                    : null,
                            child: authController.user.value?.profile == null
                                ? const Icon(
                                    Icons.person,
                                    size: 50,
                                    color: Colors.grey,
                                  )
                                : null,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Text(
                              authController.user.value?.username ??
                                  'ບໍ່ມີຂໍ້ມູນ',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    color: Colors.black45,
                                    offset: Offset(1, 1),
                                    blurRadius: 3,
                                  ),
                                ],
                              ),
                            ),
                            // const SizedBox(width: 1),
                            Icon(Icons.verified,
                                color: Colors.blue.shade300, size: 24),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              authController.user.value?.firstName ??
                                  'ບໍ່ມີຂໍ້ມູນ',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              authController.user.value?.lastName ??
                                  'ບໍ່ມີຂໍ້ມູນ',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  //modal bottom sheet data

                  ModalBottomData(authController: authController),
                  //modal bottom sheet change password

                  ShowModalPassword(),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                border: Border(
                  top: BorderSide(
                    color: Colors.white.withOpacity(0.2),
                  ),
                ),
              ),
              child: LoginButton(
                label: 'ອອກຈາກລະບົບ',
                onPressed: () async {
                  final bool? confirm = await showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      title: const Text('ຢືນຢັນ'),
                      content: const Text('ທ່ານແນ່ໃຈບໍ່ທີ່ຈະອອກຈາກລະບົບ?'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context, false),
                          child: const Text('ຍົກເລີກ',
                              style: TextStyle(color: Colors.grey)),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, true),
                          child: const Text('ອອກຈາກລະບົບ',
                              style: TextStyle(color: Colors.red)),
                        ),
                      ],
                    ),
                  );

                  if (confirm == true) {
                    authController.user.value = null;
                    Get.offAllNamed('/login');
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
