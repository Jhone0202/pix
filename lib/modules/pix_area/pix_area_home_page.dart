import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:pix/modules/send_pix/send_pix_page.dart';
import 'package:pix/shared/components/custom_icon_button.dart';
import 'package:pix/shared/components/custom_list_tile.dart';

class PixAreaHomePage extends StatefulWidget {
  static String routeName = '/';
  const PixAreaHomePage({Key? key}) : super(key: key);

  @override
  State<PixAreaHomePage> createState() => _PixAreaHomePageState();
}

class _PixAreaHomePageState extends State<PixAreaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Row(
            children: const [
              Icon(FeatherIcons.zap, size: 16),
              SizedBox(width: 4),
              Text('Área Pix'),
            ],
          ),
          const SizedBox(height: 16),
          Stack(
            children: [
              Positioned(
                left: 68,
                bottom: 0,
                child: Container(
                  width: 72,
                  height: 32,
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
                      text: 'Envie ',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    TextSpan(
                      text: 'ou ',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    TextSpan(
                      text: 'Receba ',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    TextSpan(
                      text: 'Pagamentos\n',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    TextSpan(
                      text: 'via Pix.',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black),
              children: [
                TextSpan(
                  text:
                      'Transferências via Pix a qualquer hora\ne dia da semana ',
                ),
                TextSpan(
                  text: 'Sem Taxas.',
                  style: TextStyle(fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomIconButton(
                label: 'Enviar Pix',
                svgAsset: 'assets/icons/icon_money_send.svg',
                onTap: () => Navigator.pushNamed(
                  context,
                  SendPixPage.routeName,
                ),
              ),
              CustomIconButton(
                label: 'Receber Pix',
                svgAsset: 'assets/icons/icon_money_recive.svg',
                onTap: () {},
              ),
              CustomIconButton(
                label: 'Ler QR Code',
                svgAsset: 'assets/icons/icon_qr_code_scanner.svg',
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(height: 40),
          Container(
            width: double.maxFinite,
            height: 1,
            color: const Color(0xFFF5F5F5),
          ),
          CustomListTile(
            title: 'Minhas Chaves',
            subtitle: 'Visualise ou cadastre novas chaves aqui.',
            leadingIconData: FeatherIcons.key,
            onTap: () {},
          ),
          Container(
            width: double.maxFinite,
            height: 1,
            color: const Color(0xFFF5F5F5),
          ),
          CustomListTile(
            title: 'Meus Limites Pix',
            subtitle: 'Ajuste os valores de suas transações.',
            leadingIconData: FeatherIcons.sliders,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
