import 'package:flutter/material.dart';
import 'package:pix/modules/send_pix/confirm_pix_page.dart';
import 'package:pix/modules/send_pix/how_much_to_send_page.dart';
import 'package:pix/modules/send_pix/who_to_send_page.dart';

class SendPixPage extends StatefulWidget {
  static String routeName = '/send_pix_page';
  const SendPixPage({Key? key}) : super(key: key);

  @override
  State<SendPixPage> createState() => _SendPixPageState();
}

class _SendPixPageState extends State<SendPixPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            style: const TextStyle(color: Colors.black),
            children: [
              TextSpan(text: 'Etapa ${_currentIndex + 1}'),
              const TextSpan(
                text: '/3',
                style: TextStyle(color: Color(0xFF4F4F4F)),
              ),
            ],
          ),
        ),
      ),
      body: PageView(
        onPageChanged: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        children: const [
          HowMuchToSendPage(),
          WhoToSendPage(),
          ConfirmPixPage(),
        ],
      ),
    );
  }
}
