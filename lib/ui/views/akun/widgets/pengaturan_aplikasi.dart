import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

import '../../../../application/helpers/date_string_formatter.dart';
import '../../../../application/helpers/gender_formatter.dart';
import '../akun_viewmodel.dart';
import 'akun_app_version.dart';
import 'label_and_value.dart';
import 'logout_button.dart';

class PengaturanAplikasi extends HookViewModelWidget<AkunViewModel> {
  const PengaturanAplikasi({Key? key}) : super(key: key);

  @override
  Widget buildViewModelWidget(
    BuildContext context,
    AkunViewModel viewModel,
  ) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 150.h),
      child: Column(
        children: [
          LabelAndValue(
            'Nama Lengkap',
            viewModel.user!.fullname!,
          ),
          LabelAndValue(
            'Tanggal Lahir',
            DateStringFormatter.forOutputRitel(viewModel.user!.dob!),
          ),
          LabelAndValue(
            'Gender',
            GenderFormatter.forOutput(
              viewModel.user!.gender!,
            ),
          ),
          LabelAndValue(
            'Email',
            viewModel.user!.email!,
          ),
          LabelAndValue(
            'No HP',
            viewModel.user!.phoneNum!,
          ),
          const LogoutButton(),
          const AkunAppVersion(),
        ],
      ),
    );
  }
}
