import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

import '../../../shared/creation_aware_list_item.dart';
import '../riwayat_viewmodel.dart';
import 'riwayat_card.dart';

class RiwayatList extends HookViewModelWidget<RiwayatViewModel> {
  const RiwayatList({
    Key? key,
  }) : super(key: key);

  @override
  Widget buildViewModelWidget(
    BuildContext context,
    RiwayatViewModel viewModel,
  ) {
    return RefreshIndicator(
      onRefresh: viewModel.refreshData,
      child: ListView.separated(
        padding: EdgeInsets.fromLTRB(16.w, 0.h, 16.w, 0.h),
        // shrinkWrap: true,
        itemCount: viewModel.riwayatList.length,
        itemBuilder: (context, index) {
          final riwayat = viewModel.riwayatList[index];

          return CreationAwareListItem(
            itemCreated: () => SchedulerBinding.instance.addPostFrameCallback(
              (timeStamp) => viewModel.handleItemCreated(index),
            ),
            child: RiwayatCard(
              riwayat: riwayat,
              onPressed: viewModel.navigateToRiwayatDetail,
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(
          color: const Color(0xffC8C8C8).withOpacity(0.4),
          thickness: 1.h,
        ),
      ),
    );
  }
}
