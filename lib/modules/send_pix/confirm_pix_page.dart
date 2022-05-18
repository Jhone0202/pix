import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:pix/shared/components/icon_label.dart';
import 'package:pix/shared/components/primary_button.dart';
import 'package:pix/shared/number_util.dart';

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
                        width: 156,
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
                            text: 'Confirme ',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                            text: 'os dados do ',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                          TextSpan(
                            text: 'Pix',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(FeatherIcons.messageCircle, size: 16),
                  label: const Text('Escrever uma mensagem'),
                ),
                const SizedBox(height: 24),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(text: 'Para '),
                      TextSpan(
                        text: 'Maicon Jhone Silva dos Santos',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
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
                      const TextSpan(text: 'Valor '),
                      TextSpan(
                        text: formatRealBr(500),
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(text: 'Instiruição '),
                      TextSpan(
                        text: 'BCO BRADESCO S.A.',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(text: 'Agência '),
                      TextSpan(
                        text: '973',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(text: 'Conta Corrente '),
                      TextSpan(
                        text: '8548-0',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
