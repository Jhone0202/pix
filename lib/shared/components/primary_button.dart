import 'package:flutter/material.dart';
import 'package:pix/shared/themes/app_theme.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback press;

  const PrimaryButton({
    Key? key,
    required this.label,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: AppTheme.colors.primaryColor,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      child: SizedBox(
        width: double.maxFinite,
        child: Text(
          label,
          style: AppTheme.textStyles.title1.copyWith(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
