import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

import 'input_gejala_viewmodel.dart';
import 'widgets/radio_button.dart';

class InputGejalaFormSection extends HookViewModelWidget<InputGejalaViewModel> {
  const InputGejalaFormSection({Key? key}) : super(key: key);

  @override
  Widget buildViewModelWidget(
    BuildContext context,
    InputGejalaViewModel viewModel,
  ) {
    return Form(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0),
            child: Column(
              children: List.generate(
                viewModel.listGejala.length,
                (i) => RadioButton(
                  title: '${i + 1}. ${viewModel.listGejala[i]['name']}',
                  value: viewModel.listGejala[i]['value'],
                  onChanged: (value) =>
                      viewModel.updateRadioButtonVal(i, value),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
