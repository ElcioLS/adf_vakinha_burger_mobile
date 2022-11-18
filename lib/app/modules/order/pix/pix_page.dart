import 'package:adf_vakinha_burger_mobile/app/core/ui/formatter_helper.dart';
import 'package:adf_vakinha_burger_mobile/app/core/ui/widgets/vakinha_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PixPage extends StatelessWidget {
  const PixPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    FormatterHelper.formatCurrency(200),
                    style: context.textTheme.headline4?.copyWith(
                      color: context.theme.primaryColorDark,
                      fontWeight: FontWeight.bold,

                      //
                      // Parei aqui 1:10 da aula
                      //
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
