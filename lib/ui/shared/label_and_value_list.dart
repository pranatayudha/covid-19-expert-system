import 'package:flutter/material.dart';

import '../../application/app/constants/custom_color.dart';

class LabelAndValueList extends StatelessWidget {
  final String label;
  final List<String> value;
  final bool? isLast;

  const LabelAndValueList({
    Key? key,
    required this.label,
    required this.value,
    this.isLast = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xff828896),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 1.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(
            value.length,
            (i) => Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: CustomColor.primaryBlue,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: CustomColor.primaryBlue,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        '${i + 1}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 8.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  Expanded(
                    child: Text(
                      value[i],
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xff162B3A),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        isLast! ? Container() : const SizedBox(height: 18.0),
      ],
    );
  }
}
