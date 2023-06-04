import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../application/app/constants/custom_color.dart';
import '../../../shared/label_and_value_list.dart';
import '../../../shared/network_sensitive.dart';
import '../../../shared/styles.dart';
import '../../../shared/thick_light_grey_divider.dart';
import '../../summary/solusi_view.dart';
import 'riwayat_detail_viewmodel.dart';
import 'widgets/label_and_value.dart';

class RiwayatDetailView extends ViewModelBuilderWidget<RiwayatDetailViewModel> {
  const RiwayatDetailView({Key? key}) : super(key: key);

  @override
  RiwayatDetailViewModel viewModelBuilder(BuildContext context) =>
      RiwayatDetailViewModel();

  @override
  Widget builder(
    BuildContext context,
    RiwayatDetailViewModel viewModel,
    Widget? child,
  ) {
    return NetworkSensitive(
      child: WillPopScope(
        onWillPop: () async {
          return true;
        },
        child: Scaffold(
          backgroundColor: Theme.of(context).canvasColor,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            shadowColor: Colors.transparent,
            title: Text(
              'Riwayat Detail',
              style: tsHeading6,
            ),
          ),
          body: Column(
            children: [
              const ThickLightGreyDivider(),
              Container(
                padding: const EdgeInsets.all(10.0),
                color: Colors.white,
                child: Column(
                  children: [
                    LabelAndValue(
                      label: 'Nama Lengkap',
                      value: viewModel.riwayatDetail!.fullname!,
                    ),
                    LabelAndValue(
                      label: 'Tanggal Lahir',
                      value: viewModel.riwayatDetail!.dob!,
                    ),
                    LabelAndValue(
                      label: 'Terpapar Virus',
                      value: viewModel.riwayatDetail!.subVarian! != '-'
                          ? '${viewModel.riwayatDetail!.virusName!} - ${viewModel.riwayatDetail!.code!}\n${viewModel.riwayatDetail!.subVarian!}'
                          : '${viewModel.riwayatDetail!.virusName!} - ${viewModel.riwayatDetail!.code!}',
                    ),
                    LabelAndValue(
                      label: 'Tanggal Pengecekkan',
                      value: viewModel.riwayatDetail!.createdAt!,
                    ),
                  ],
                ),
              ),
              const ThickLightGreyDivider(),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                          10.0,
                          10.0,
                          10.0,
                          0.0,
                        ),
                        child: Text(
                          'Gejala dan Solusi',
                          style: tsBody1,
                        ),
                      ),
                      Expanded(
                        child: Accordion(
                          maxOpenSections: 10,
                          headerBackgroundColorOpened: CustomColor.primaryBlue,
                          headerBackgroundColor: CustomColor.darkGrey,
                          scaleWhenAnimating: true,
                          openAndCloseAnimation: true,
                          headerPadding: const EdgeInsets.symmetric(
                            vertical: 7,
                            horizontal: 16,
                          ),
                          sectionOpeningHapticFeedback:
                              SectionHapticFeedback.heavy,
                          sectionClosingHapticFeedback:
                              SectionHapticFeedback.light,
                          children: [
                            for (var i = 0;
                                i < viewModel.riwayatDetail!.solution!.length;
                                i++)
                              AccordionSection(
                                header: Text(
                                  viewModel.riwayatDetail!.solution![i].name!,
                                  style: headerStyle,
                                ),
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    LabelAndValueList(
                                      label: 'Pencegahan',
                                      value: viewModel.riwayatDetail!
                                          .solution![i].prevention!,
                                    ),
                                    LabelAndValueList(
                                      label: 'Pengobatan',
                                      value: viewModel.riwayatDetail!
                                          .solution![i].treatment!,
                                    ),
                                    LabelAndValueList(
                                      label: 'Obat',
                                      value: viewModel
                                          .riwayatDetail!.solution![i].drug!,
                                      isLast: true,
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
