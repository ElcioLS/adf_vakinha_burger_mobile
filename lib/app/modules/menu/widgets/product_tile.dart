import 'package:adf_vakinha_burger_mobile/app/core/ui/vakinha_ui.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 80,
        child: Row(
          children: [
            Container(
              width: 80,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                image: DecorationImage(
                    image: NetworkImage(
                      'https://www.sabornamesa.com.br/media/k2/items/cache/b9ad772005653afce4d4bd46c2efe842_XL.jpg',
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Expanded(
                child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    'X-TUDAO',
                    style: VakinhaUI.textBold,
                  ),
                  Text(r'R$ 200,00'),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
