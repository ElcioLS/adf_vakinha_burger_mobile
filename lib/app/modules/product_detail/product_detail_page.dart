import 'package:adf_vakinha_burger_mobile/app/core/ui/formatter_helper.dart';
import 'package:adf_vakinha_burger_mobile/app/core/ui/vakinha_ui.dart';
import 'package:adf_vakinha_burger_mobile/app/core/ui/widgets/plus_minus_box.dart';
import 'package:adf_vakinha_burger_mobile/app/core/ui/widgets/vakinha_appbar.dart';
import 'package:adf_vakinha_burger_mobile/app/core/ui/widgets/vakinha_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './product_detail_controller.dart';

class ProductDetailPage extends GetView<ProductDetailController> {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VakinhaAppBar(),
      body: LayoutBuilder(
        builder: (_, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
                minWidth: constraints.maxWidth,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: context.width,
                    height: context.heightTransformer(reducedBy: 60),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'http://192.168.0.112:8080/images/xtudo.jpeg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'X-TUDAO',
                      style: context.textTheme.headline4!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'X-TUDAO',
                      style: context.textTheme.bodyText2!,
                    ),
                  ),
                  const SizedBox(height: 10),
                  PlusMinusBox(
                    // label: 'X BACON BURGER',
                    minusCallBack: () {},
                    plusCallBack: () {},
                    price: 6.00,
                    quantity: 1,
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text(
                      'Total',
                      style: VakinhaUI.textBold,
                    ),
                    trailing: Text(
                      FormatterHelper.formatCurrency(200.0),
                      style: VakinhaUI.textBold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: SizedBox(
                      width: context.widthTransformer(reducedBy: 10),
                      child: VakinhaButton(
                        label: 'ADICIONAR',
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
