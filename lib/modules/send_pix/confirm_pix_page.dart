import 'package:flutter/material.dart';
import 'package:pix/shared/components/primary_button.dart';

class ConfirmPixPage extends StatefulWidget {
  const ConfirmPixPage({Key? key}) : super(key: key);

  @override
  State<ConfirmPixPage> createState() => _ConfirmPixPageState();
}

class _ConfirmPixPageState extends State<ConfirmPixPage> {
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
            label: 'Transferir',
            press: () {},
          ),
        ],
      ),
    );
  }
}
