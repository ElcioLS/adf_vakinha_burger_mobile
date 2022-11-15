import 'package:adf_vakinha_burger_mobile/app/core/bindings/application_binding.dart';
import 'package:adf_vakinha_burger_mobile/app/core/ui/vakinha_ui.dart';
import 'package:adf_vakinha_burger_mobile/app/routes/splash_routers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/auth_routers.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const VakinhaBurgerMainApp());
}

class VakinhaBurgerMainApp extends StatelessWidget {
  const VakinhaBurgerMainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vakinha Burger',
      theme: VakinhaUI.theme,
      initialBinding: ApplicationBinding(),
      getPages: [
        ...SplashRouters.routers,
        ...AuthRouters.routers,
      ],
    );
  }
}
