import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../application/app/constants/custom_color.dart';
import '../../shared/fixed_button.dart';
import '../../shared/label_and_value_list.dart';
import '../../shared/network_sensitive.dart';
import '../../shared/styles.dart';
import 'solusi_viewmodel.dart';

const headerStyle = TextStyle(
  color: Colors.white,
  fontSize: 15,
  fontWeight: FontWeight.bold,
);

class SolusiView extends ViewModelBuilderWidget<SolusiViewModel> {
  final List idSymptoms;
  const SolusiView({
    Key? key,
    required this.idSymptoms,
  }) : super(key: key);

  @override
  SolusiViewModel viewModelBuilder(BuildContext context) => SolusiViewModel(
        idSymptoms: idSymptoms,
      );

  @override
  Widget builder(
    BuildContext context,
    SolusiViewModel viewModel,
    Widget? child,
  ) {
    return NetworkSensitive(
      child: WillPopScope(
        onWillPop: () async {
          viewModel.navigateToHome();

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
              'Gejala dan Solusi',
              style: tsHeading6,
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Accordion(
                  maxOpenSections: 10,
                  headerBackgroundColorOpened: CustomColor.primaryBlue,
                  headerBackgroundColor: CustomColor.darkGrey,
                  scaleWhenAnimating: true,
                  openAndCloseAnimation: true,
                  headerPadding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                  sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                  sectionClosingHapticFeedback: SectionHapticFeedback.light,
                  children: [
                    for (var i = 0; i < viewModel.listSolusi.length; i++)
                      AccordionSection(
                        header: Text(
                          viewModel.listSolusi[i].name!,
                          style: headerStyle,
                        ),
                        content: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LabelAndValueList(
                              label: 'Pencegahan',
                              value: viewModel.listSolusi[i].prevention!,
                            ),
                            LabelAndValueList(
                              label: 'Pengobatan',
                              value: viewModel.listSolusi[i].treatment!,
                            ),
                            LabelAndValueList(
                              label: 'Obat',
                              value: viewModel.listSolusi[i].drug!,
                              isLast: true,
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              FixedButton(
                mainButtonTitle: 'Kembali ke Beranda',
                onMainButtonPressed: viewModel.navigateToHome,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
