import 'package:adf_vakinha_burger_mobile/app/modules/register/register_controller.dart';
import 'package:adf_vakinha_burger_mobile/app/repositories/auth/auth_repository.dart';
import 'package:adf_vakinha_burger_mobile/app/repositories/auth/auth_repository_impl.dart';
import 'package:get/get.dart';

class RegisterBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRepository>(
        () => AuthRepositoryImpl(restClient: Get.find()));
    Get.lazyPut(() => RegisterController(authRepository: Get.find()));
  }
}
