import 'package:adf_vakinha_burger_mobile/app/modules/home/home_bindings.dart';
import 'package:adf_vakinha_burger_mobile/app/modules/home/home_page.dart';
import 'package:get/get.dart';

class HomeRouters {
  HomeRouters._();

  static final routers = <GetPage>[
    GetPage(
      name: '/home',
      binding: HomeBindings(),
      page: () => const HomePage(),
    ),
  ];
}
