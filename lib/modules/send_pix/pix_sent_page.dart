import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:pix/shared/components/sencondary_button.dart';
import 'package:pix/shared/helpers/svg_helper.dart';
import 'package:pix/shared/number_util.dart';
import 'package:pix/shared/themes/app_theme.dart';

class PixSentPage extends StatefulWidget {
  static String routeName = '/pix_sent_page';
  const PixSentPage({Key? key}) : super(key: key);

  @override
  State<PixSentPage> createState() => _PixSentPageState();
}

class _PixSentPageState extends State<PixSentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgHelper().svg('assets/images/sent_pix.svg'),
            const SizedBox(height: 16),
            Text(
              'Efetuamos sua transferência',
              style: AppTheme.textStyles.headline2,
            ),
            const SizedBox(height: 32),
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFF5F5F5)),
              ),
              child: Column(
                children: [
                  Text(
                    formatRealBr(500),
                    style: AppTheme.textStyles.headline2,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'para Maicon Jhone Silva dos Santos',
                    style: AppTheme.textStyles.subtitle1,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '04 Mai, 2022 - 21:00',
                    style: TextStyle(
                      color: AppTheme.colors.grey700,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 16),
                  SecondaryButton(
                    press: () {},
                    label: 'Enviar comprovante',
                    iconData: FeatherIcons.fileText,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
