import 'package:adf_vakinha_burger_mobile/app/core/bindings/application_binding.dart';
import 'package:adf_vakinha_burger_mobile/app/core/ui/vakinha_ui.dart';
import 'package:adf_vakinha_burger_mobile/app/routes/splash_routers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/auth_routers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
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
