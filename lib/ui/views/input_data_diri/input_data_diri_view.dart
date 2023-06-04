import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../shared/form_layout.dart';
import '../../shared/network_sensitive.dart';
import 'input_data_diri_form_section.dart';
import 'input_data_diri_viewmodel.dart';

class InputDataDiriView extends ViewModelBuilderWidget<InputDataDiriViewModel> {
  const InputDataDiriView({Key? key}) : super(key: key);

  @override
  InputDataDiriViewModel viewModelBuilder(BuildContext context) =>
      InputDataDiriViewModel();

  @override
  Widget builder(
    BuildContext context,
    InputDataDiriViewModel viewModel,
    Widget? child,
  ) {
    return NetworkSensitive(
      child: WillPopScope(
        onWillPop: () async {
          viewModel.navigateBack();

          return true;
        },
        child: FormLayout(
          title: 'Data Diri',
          onBackButtonPressed: viewModel.navigateBack,
          isBusy: false,
          mainButtonTitle: 'Selanjutnya',
          onMainButtonPressed: viewModel.validateInputs,
          child: Column(
            children: const [
              InputDataDiriFormSection(),
            ],
          ),
        ),
      ),
    );
  }
}
