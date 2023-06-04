import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../shared/form_layout.dart';
import '../../shared/network_sensitive.dart';
import 'input_gejala_form_section.dart';
import 'input_gejala_viewmodel.dart';

class InputGejalaView extends ViewModelBuilderWidget<InputGejalaViewModel> {
  const InputGejalaView({Key? key}) : super(key: key);

  @override
  InputGejalaViewModel viewModelBuilder(BuildContext context) =>
      InputGejalaViewModel();

  @override
  Widget builder(
    BuildContext context,
    InputGejalaViewModel viewModel,
    Widget? child,
  ) {
    return NetworkSensitive(
      child: WillPopScope(
        onWillPop: () async {
          viewModel.navigateBack();

          return true;
        },
        child: FormLayout(
          title: 'List Gejala',
          onBackButtonPressed: viewModel.navigateBack,
          isBusy: false,
          mainButtonTitle: 'Selanjutnya',
          onMainButtonPressed: viewModel.validateInputs,
          child: Column(
            children: const [
              InputGejalaFormSection(),
            ],
          ),
        ),
      ),
    );
  }
}
