import 'package:flutter/material.dart';

import 'package:pix/shared/themes/app_theme.dart';

class SecondaryButton extends StatelessWidget {
  final VoidCallback press;
  final String label;
  final IconData? iconData;

  const SecondaryButton({
    Key? key,
    required this.press,
    required this.label,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: AppTheme.colors.primaryColor,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (iconData != null) Icon(iconData, color: Colors.white),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
