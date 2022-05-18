import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:pix/shared/components/icon_label.dart';
import 'package:pix/shared/components/primary_button.dart';
import 'package:pix/shared/number_util.dart';
import 'package:pix/shared/themes/app_theme.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class HowMuchToSendPage extends StatefulWidget {
  const HowMuchToSendPage({Key? key}) : super(key: key);

  @override
  State<HowMuchToSendPage> createState() => _HowMuchToSendPageState();
}

class _HowMuchToSendPageState extends State<HowMuchToSendPage> {
  final valueController = MoneyMaskedTextController(leftSymbol: 'R\$ ');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                const IconLabel(
                  iconData: FeatherIcons.zap,
                  label: 'Enviar Pix',
                ),
                const SizedBox(height: 16),
                Stack(
                  children: [
                    Positioned(
                      top: 34,
                      left: 14,
                      child: Container(
                        width: 120,
                        height: 24,
                        color: const Color(0xFFB0F8FE),
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 40,
                          height: 1.5,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: 'Quanto ',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                            text: 'você quer ',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                          TextSpan(
                            text: 'Enviar?',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.black,
                    ),
                    children: [
                      const TextSpan(text: 'Saldo disponível '),
                      TextSpan(
                        text: formatRealBr(1000),
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                TextField(
                  autofocus: true,
                  controller: valueController,
                  style: AppTheme.textStyles.headline1,
                ),
              ],
            ),
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
