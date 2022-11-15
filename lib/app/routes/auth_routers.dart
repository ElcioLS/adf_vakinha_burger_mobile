import 'package:adf_vakinha_burger_mobile/app/modules/auth/login/login_bindings.dart';
import 'package:adf_vakinha_burger_mobile/app/modules/register/register_bindings.dart';
import 'package:get/get.dart';

import '../modules/auth/login/login_page.dart';
import '../modules/register/register_page.dart';

class AuthRouters {
  AuthRouters._();

  static final routers = <GetPage>[
    GetPage(
        name: '/auth/login',
        binding: LoginBindings(),
        page: () => const LoginPage()),
    GetPage(
        name: '/auth/register',
        binding: RegisterBindings(),
        page: () => const RegisterPage()),
  ];
}
