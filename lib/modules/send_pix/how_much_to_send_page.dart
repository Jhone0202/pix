import 'package:flutter/material.dart';
import 'package:pix/shared/components/primary_button.dart';

class HowMuchToSendPage extends StatefulWidget {
  const HowMuchToSendPage({Key? key}) : super(key: key);

  @override
  State<HowMuchToSendPage> createState() => _HowMuchToSendPageState();
}

class _HowMuchToSendPageState extends State<HowMuchToSendPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          Expanded(
            child: ListView(),
          ),
          PrimaryButton(
            label: 'Continuar',
            press: () {},
          ),
        ],
      ),
    );
  }
}
