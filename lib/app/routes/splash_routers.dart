import 'package:get/get.dart';

import '../modules/splash/splash_page.dart';

class SplashRouters {
  SplashRouters._();
  static final routers = <GetPage>[
    GetPage(name: '/', page: () => Get.put(const SplashPage())),
  ];
}
