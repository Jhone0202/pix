import 'package:flutter/material.dart';

class IconLabel extends StatelessWidget {
  final IconData iconData;
  final String label;
  const IconLabel({
    Key? key,
    required this.iconData,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData, size: 16),
        const SizedBox(width: 4),
        Text(label),
      ],
    );
  }
}
