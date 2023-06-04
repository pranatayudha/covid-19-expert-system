import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import '../../../application/app/constants/custom_color.dart';
import '../../../application/app/constants/image_constants.dart';
import '../../shared/network_sensitive.dart';
import '../../shared/styles.dart';
import 'summary_viewmodel.dart';

class SummaryView extends ViewModelBuilderWidget<SummaryViewModel> {
  final String idVirusesMapping;
  final String idVirus;
  final List idSymptoms;
  const SummaryView({
    Key? key,
    required this.idVirusesMapping,
    required this.idVirus,
    required this.idSymptoms,
  }) : super(key: key);

  @override
  SummaryViewModel viewModelBuilder(BuildContext context) => SummaryViewModel(
        idVirusesMapping: idVirusesMapping,
        idVirus: idVirus,
        idSymptoms: idSymptoms,
      );

  @override
  Widget builder(
    BuildContext context,
    SummaryViewModel viewModel,
    Widget? child,
  ) {
    return NetworkSensitive(
      child: WillPopScope(
        onWillPop: () async => true,
        child: Scaffold(
          backgroundColor: Theme.of(context).canvasColor,
          body: Center(
            child: viewModel.virus == null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircularProgressIndicator(),
                      SizedBox(height: 5.h),
                      Text(
                        'Memuat data...',
                        style: TextStyle(fontSize: 14.sp),
                      ),
                    ],
                  )
                : Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageConstants.successBg),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          ImageConstants.coronavirusResult,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Dari gejala tersebut, sistem mendiagnosa bahwa Anda terpapar virus',
                                style: tsHeading6,
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '${viewModel.virus!.name!} - ${viewModel.virus!.code!}',
                                style: tsHeading3.copyWith(
                                  color: CustomColor.primaryRed,
                                ),
                              ),
                              if (viewModel.virus!.subvarian! != '-')
                                Text(
                                  'Subvarian: ${viewModel.virus!.subvarian!}',
                                  style: tsHeading3.copyWith(
                                    color: CustomColor.primaryRed,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              _buildButton(viewModel),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(SummaryViewModel vm) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 0),
      child: ElevatedButton(
        onPressed: vm.navigateToSolusi,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          backgroundColor: CustomColor.primaryOrange,
          elevation: 10.0,
          shadowColor: CustomColor.lightOrange,
        ),
        child: const AutoSizeText(
          'Lihat list solusi dari gejala tersebut',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
