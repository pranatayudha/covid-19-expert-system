import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../application/models/riwayat.dart';
import '../riwayat_viewmodel.dart';

final formatter = NumberFormat('#,###', 'id_ID');

class RiwayatCard extends StatelessWidget {
  final Function onPressed;
  final Riwayat riwayat;

  const RiwayatCard({
    required this.onPressed,
    Key? key,
    required this.riwayat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return loadingIndicatorHistoryListItem.id == riwayat.id
        ? const LinearProgressIndicator()
        : TextButton(
            onPressed: () => onPressed(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      riwayat.fullname!,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: const Color(0xff03213e),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      riwayat.dob!,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xff66788a),
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Container(
                      width: 108.w,
                      height: 20.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        color: const Color(0xffFEF5EE),
                      ),
                      child: Center(
                        child: Text(
                          riwayat.subVarian != '-'
                              ? '${riwayat.virusName!} · ${riwayat.subVarian!}'
                              : riwayat.virusName!,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffF07126),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.access_time,
                      color: Color(0xff66788a),
                      size: 16.0,
                    ),
                    Text(
                      riwayat.createdAt!,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xff66788a),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
