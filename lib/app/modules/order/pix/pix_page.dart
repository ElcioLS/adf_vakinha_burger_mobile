import 'package:adf_vakinha_burger_mobile/app/core/ui/formatter_helper.dart';
import 'package:adf_vakinha_burger_mobile/app/core/ui/widgets/vakinha_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../models/order_pix.dart';

class PixPage extends StatelessWidget {
  final OrderPix _orderPix = Get.arguments;

  PixPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var qrCode = Uri.parse(_orderPix.image).data;

    return Scaffold(
        appBar: VakinhaAppBar(),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Valor a pagar',
                    style: context.textTheme.headline4,
                  ),
                  Text(
                    FormatterHelper.formatCurrency(_orderPix.totalValue),
                    style: context.textTheme.headline4?.copyWith(
                      color: context.theme.primaryColorDark,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.memory(
                    qrCode!.contentAsBytes(),
                    width: context.widthTransformer(reducedBy: 50),
                    height: context.heightTransformer(reducedBy: 50),
                  ),
                  TextButton(
                    onPressed: () {
                      Clipboard.setData(
                        ClipboardData(
                          text: _orderPix.code,
                        ),
                      );
                      Get.rawSnackbar(
                        message: 'Código Pix copiado',
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    },
                    style: TextButton.styleFrom(foregroundColor: Colors.grey),
                    child: Text(
                      'PIX copia e cola',
                      style: context.textTheme.headline4?.copyWith(
                        fontSize: 30,
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.dashed,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}





// import 'package:adf_vakinha_burger_mobile/app/core/ui/formatter_helper.dart';
// import 'package:adf_vakinha_burger_mobile/app/core/ui/widgets/vakinha_appbar.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class PixPage extends StatelessWidget {
//   // final OrderPix _orderPix = Get.arguments;

//   const PixPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: VakinhaAppBar(),
//         body: CustomScrollView(
//           slivers: [
//             SliverFillRemaining(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Valor a pagar',
//                     style: context.textTheme.headline4,
//                   ),
//                   Text(
//                     // FormatterHelper.formatCurrency(_orderPix.totalValue),
//                     FormatterHelper.formatCurrency(200),
//                     style: context.textTheme.headline4?.copyWith(
//                       color: context.theme.primaryColorDark,
//                       fontWeight: FontWeight.bold,

//                       //
//                       // Parei aqui 1:10 da aula
//                       //
//                     ),
//                   ),
//                   Image.network(
//                     'https://qrcg-free-editor.qr-code-generator.com/main/assets/images/websiteQRCode_noFrame.png',
//                     width: context.widthTransformer(reducedBy: 50),
//                     height: context.heightTransformer(reducedBy: 50),
//                   ),
//                   TextButton(
//                     onPressed: () {}, 
//                     style: TextButton.styleFrom(foregroundColor: Colors.grey),
//                     child: Text(
//                       'PIX copia e cola',
//                       style: context.textTheme.headline4?.copyWith(
//                         fontSize: 30,
//                         decoration: TextDecoration.underline,
//                         decorationStyle: TextDecorationStyle.dashed,
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             )
//           ],
//         ));
//   }
// }
