import 'package:flutter/material.dart';
import 'package:pix/modules/pix_area/pix_area_home_page.dart';
import 'package:pix/modules/send_pix/pix_sent_page.dart';
import 'package:pix/modules/send_pix/send_pix_page.dart';

final routes = <String, WidgetBuilder>{
  PixAreaHomePage.routeName: (context) => const PixAreaHomePage(),
  SendPixPage.routeName: (context) => const SendPixPage(),
  PixSentPage.routeName: (context) => const PixSentPage(),
};
