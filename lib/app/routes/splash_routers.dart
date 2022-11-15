import 'package:adf_vakinha_burger_mobile/app/modules/splash/splash_bindings.dart';
import 'package:get/get.dart';

import '../modules/splash/splash_page.dart';

class SplashRouters {
  SplashRouters._();
  static final routers = <GetPage>[
    GetPage(
        name: '/',
        binding: SplashBindings(),
        page: () => Get.put(const SplashPage())),
  ];
}
