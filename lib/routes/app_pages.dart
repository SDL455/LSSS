import 'package:get/get.dart';
import 'package:plp/features/auth/bindings/auth_binding.dart';
import 'package:plp/features/auth/controllers/auth_controller.dart';
import 'package:plp/features/auth/views/login_screen.dart';
import 'package:plp/features/dasboard/bingings/%E0%BA%B5update_binding.dart';
import 'package:plp/features/dasboard/bingings/DetailsCertificateCheckView.dart';
import 'package:plp/features/dasboard/bingings/dashboard_binding.dart';
import 'package:plp/features/dasboard/view/Dasboard_view.dart';
import 'package:plp/features/dasboard/view/add_new_customer.dart';
import 'package:plp/features/dasboard/view/certificate_result.dart';
import 'package:plp/features/dasboard/view/show_model_data_update.dart';
import 'package:plp/features/dasboard/view/user_data_view.dart';
import 'package:plp/routes/app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.login,
      page: () => LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.dashboard,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: AppRoutes.updateuser,
      page: () => ShowModelDataUpdate(authController: AuthController()),
      binding: UpdateBinding(),
    ),
    GetPage(
      name: AppRoutes.certificateResult,
      page: () => certificateResult(),
      binding: Detailscertificatecheckview(),
    ),
    GetPage(
      name: AppRoutes.userData,
      page: () => UserDataView(),
      // binding: UserDataBinding(),
    ),
    GetPage(
      name: AppRoutes.addNewCustomer,
      page: () => AddNewCustomer(),
      // binding: UserDataBinding(),
    ),
  ];
}
