import 'package:get/get.dart';

import '../modules/splash/splash_page.dart';

class SplashRoutes {
  SplashRoutes._();
  static final routers = <GetPage>[
    GetPage(name: '/', page: () => Get.put(const SplashPage())),
  ];
}
