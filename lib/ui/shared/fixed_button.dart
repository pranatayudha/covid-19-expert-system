import 'package:flutter/material.dart';

import '../../application/app/constants/custom_color.dart';
import 'custom_button.dart';

class FixedButton extends StatelessWidget {
  final String mainButtonTitle;
  final Future<dynamic> Function()? onMainButtonPressed;
  final double? labelSize;
  final Color? color;

  const FixedButton({
    super.key,
    required this.mainButtonTitle,
    required this.onMainButtonPressed,
    this.labelSize,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            offset: const Offset(0, -2),
            color: CustomColor.primaryBlack.withOpacity(0.1),
          ),
        ],
      ),
      child: CustomButton(
        label: mainButtonTitle,
        onPressed: onMainButtonPressed,
        isBusy: false,
        labelSize: labelSize,
        color: color,
      ),
    );
  }
}
