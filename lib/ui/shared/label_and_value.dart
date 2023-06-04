import 'package:flutter/material.dart';

class LabelAndValue extends StatelessWidget {
  final String label;
  final String value;
  final bool? isLast;

  const LabelAndValue({
    Key? key,
    required this.label,
    required this.value,
    this.isLast = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xff828896),
          ),
        ),
        const SizedBox(height: 1.0),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xff162B3A),
          ),
        ),
        isLast! ? Container() : const SizedBox(height: 18.0),
      ],
    );
  }
}
