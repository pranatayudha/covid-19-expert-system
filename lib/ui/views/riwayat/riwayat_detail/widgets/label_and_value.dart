import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/styles.dart';

class LabelAndValue extends StatelessWidget {
  final String label;
  final String value;

  const LabelAndValue({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: tsDarkGrey.copyWith(
              fontSize: 16.sp,
            ),
          ),
          SizedBox(width: 20.w),
          Expanded(
            child: Text(
              value,
              style: tsBody4.copyWith(
                fontSize: 16.sp,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
