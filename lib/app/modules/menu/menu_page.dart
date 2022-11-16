import 'package:adf_vakinha_burger_mobile/app/modules/menu/widgets/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './menu_controller.dart';

class MenuPage extends GetView<MenuController> {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return const ProductTile();
        });
  }
}