import 'package:adf_vakinha_burger_mobile/app/code/ui/vakinha_ui.dart';
import 'package:adf_vakinha_burger_mobile/app/routes/splash_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      getPages: [
        ...SplashRoutes.routers,
      ],
    );
  }
}
