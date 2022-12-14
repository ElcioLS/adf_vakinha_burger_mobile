import 'package:adf_vakinha_burger_mobile/app/repositories/auth/products/product_repository.dart';
import 'package:get/get.dart';

import '../../repositories/auth/products/product_repository_impl.dart';
import 'menu_controller.dart';

class MenuBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductRepository>(
        () => ProductRepositoryImpl(restClient: Get.find()));

    Get.put(MenuController(productRepository: Get.find()));
  }
}
