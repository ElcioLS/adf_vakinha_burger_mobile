import 'package:get/get.dart';

import '../modules/auth/login/login_page.dart';

class AuthRoutes {
  AuthRoutes._();

  static final routers = <GetPage>[
    GetPage(name: '/auth/login', page: () => Get.put(const LoginPage())),
  ];
}
