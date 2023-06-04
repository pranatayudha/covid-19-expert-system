import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import '../../../application/app/constants/image_constants.dart';
import '../../shared/custom_linear_progress_indicator.dart';
import '../../shared/custom_search_bar.dart';
import '../../shared/network_sensitive.dart';
import '../../shared/styles.dart';
import 'riwayat_viewmodel.dart';
import 'widgets/riwayat_list.dart';

class RiwayatView extends ViewModelBuilderWidget<RiwayatViewModel> {
  const RiwayatView({Key? key}) : super(key: key);

  @override
  RiwayatViewModel viewModelBuilder(BuildContext context) => RiwayatViewModel();

  @override
  Widget builder(
    BuildContext context,
    RiwayatViewModel viewModel,
    Widget? child,
  ) {
    return NetworkSensitive(
      child: WillPopScope(
        onWillPop: () async {
          // await viewModel.navigateToHomePage();

          return true;
        },
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Color(0xff606060)),
            shadowColor: Colors.transparent,
            title: Text(
              'List Riwayat',
              style: tsHeading6,
            ),
            leading: GestureDetector(
              // onTap: viewModel.navigateToHomePage,
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 24.sp,
              ),
            ),
          ),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: CustomSearchBar(
                    hintText: 'Cari Nama Pasien',
                    // onSubmitted: viewModel.search,
                  ),
                ),
                if (viewModel.isBusy)
                  const Expanded(
                    child: CustomLinearProgressIndicator(),
                  )
                // else if (viewModel.monitoringList.isEmpty)
                //   _buildHistoryListEmpty()
                else
                  const Expanded(child: RiwayatList()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHistoryListEmpty() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(ImageConstants.pipelineEmpty, scale: 3),
          const SizedBox(height: 32),
          Text(
            'Data nasabah dalam Monitoring belum tersedia.',
            style: tsBody6,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
