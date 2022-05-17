import 'package:flutter/material.dart';

class SendPixPage extends StatefulWidget {
  static String routeName = '/send_pix_page';
  const SendPixPage({Key? key}) : super(key: key);

  @override
  State<SendPixPage> createState() => _SendPixPageState();
}

class _SendPixPageState extends State<SendPixPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Etapa 1/3'),
      ),
    );
  }
}
