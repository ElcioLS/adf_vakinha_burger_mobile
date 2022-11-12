import 'package:adf_vakinha_burger_mobile/app/core/ui/widgets/vakinha_textformfield.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      body: Column(
        children: const [
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: VakinhaTextformfield(
              label: 'Text',
            ),
          ),
        ],
      ),
    );
  }
}
