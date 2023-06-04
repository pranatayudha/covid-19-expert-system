import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../application/app/constants/custom_color.dart';

class RadioButton extends StatelessWidget {
  final String title;
  final bool value;
  final Function(bool) onChanged;
  const RadioButton({
    Key? key,
    required this.title,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    color: CustomColor.primaryBlack,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Expanded(
                child: Transform.scale(
                  scale: 0.8,
                  child: CupertinoSwitch(
                    activeColor: CustomColor.secondaryBlue,
                    value: value,
                    onChanged: onChanged,
                  ),
                ),
              ),
            ],
          ),
          const Divider(thickness: 1.5),
        ],
      ),
    );
  }
}
