import 'package:flutter/material.dart';
import 'package:pix/shared/components/primary_button.dart';

class WhoToSendPage extends StatefulWidget {
  const WhoToSendPage({Key? key}) : super(key: key);

  @override
  State<WhoToSendPage> createState() => _WhoToSendPageState();
}

class _WhoToSendPageState extends State<WhoToSendPage> {
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
            label: 'Transferir para este CPF',
            press: () {},
          ),
        ],
      ),
    );
  }
}
