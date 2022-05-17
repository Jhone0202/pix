import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgHelper {
  Widget svg(String path) {
    return SvgPicture.asset(path);
  }
}
