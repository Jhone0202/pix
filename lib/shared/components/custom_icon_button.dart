import 'package:flutter/material.dart';
import 'package:pix/shared/helpers/svg_helper.dart';

class CustomIconButton extends StatelessWidget {
  final String label;
  final String svgAsset;
  final VoidCallback onTap;
  const CustomIconButton({
    Key? key,
    required this.label,
    required this.svgAsset,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: const Color(0xFFF5F5F5),
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.all(4),
            child: SvgHelper().svg(svgAsset),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
