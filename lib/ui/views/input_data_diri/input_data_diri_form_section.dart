import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

import '../../../application/app/constants/icon_constants.dart';
import '../../../application/helpers/date_time_picker.dart';
import '../../../application/helpers/input_validators.dart';
import '../../shared/custom_textfield.dart';
import 'input_data_diri_viewmodel.dart';

class InputDataDiriFormSection
    extends HookViewModelWidget<InputDataDiriViewModel> {
  const InputDataDiriFormSection({Key? key}) : super(key: key);

  @override
  Widget buildViewModelWidget(
    BuildContext context,
    InputDataDiriViewModel viewModel,
  ) {
    return Form(
      key: viewModel.formKey,
      autovalidateMode: viewModel.autoValidateMode,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0),
            child: Column(
              children: [
                _buildNama(viewModel),
                _buildTanggalLahir(viewModel, context),
                _buildJenisKelamin(viewModel),
                _buildEmail(viewModel),
                _buildNomorHandphone(viewModel),
              ],
            ),
          ),
        ],
      ),
    );
  }

  CustomTextField _buildNama(InputDataDiriViewModel viewModel) {
    return CustomTextField(
      textEditingController: viewModel.namaController,
      label: 'Nama',
      hintText: 'Masukkan Nama',
      textCapitalization: TextCapitalization.words,
      onSave: viewModel.updateNama,
      onChanged: viewModel.updateNama,
      validator: (value) =>
          InputValidators.validateName(value, fieldType: 'Nama'),
    );
  }

  CustomTextField _buildTanggalLahir(
    InputDataDiriViewModel viewModel,
    BuildContext context,
  ) {
    return CustomTextField(
      textEditingController: viewModel.tanggalLahirController,
      label: 'Tanggal Lahir',
      hintText: 'DD/MM/YYYY',
      withSuffixIcon: true,
      suffixIconImagePath: IconConstants.calendar,
      onTap: () async {
        String date = await DateTimePicker.showingDatePicker(context);
        viewModel.updateTanggalLahir(date);
      },
      enabled: false,
      fillColor: Colors.white,
      onSave: viewModel.updateTanggalLahir,
      validator: (value) => InputValidators.ritelValidateBirthDate(
        value,
        fieldType: 'Tanggal Lahir',
      ),
    );
  }

  PopupMenuButton<String> _buildJenisKelamin(
    InputDataDiriViewModel viewModel,
  ) {
    return PopupMenuButton(
      offset: Offset(0, 65.h),
      itemBuilder: (BuildContext context) {
        return [
          'Laki-laki',
          'Perempuan',
        ].map<PopupMenuItem<String>>((value) {
          return PopupMenuItem(value: value, child: Text(value));
        }).toList();
      },
      onSelected: (String val) => viewModel.updateJenisKelamin(val),
      child: CustomTextField(
        textEditingController: viewModel.jenisKelaminController,
        label: 'Jenis Kelamin',
        hintText: 'Pilih Jenis Kelamin',
        withSuffixIcon: true,
        suffixIconImagePath: IconConstants.chevronDown,
        enabled: false,
        fillColor: Colors.white,
        validator: (value) => InputValidators.validateRequiredField(
          value,
          fieldType: 'Jenis Kelamin',
        ),
      ),
    );
  }

  CustomTextField _buildEmail(InputDataDiriViewModel viewModel) {
    return CustomTextField(
      textEditingController: viewModel.emailController,
      label: 'Email',
      hintText: 'Masukkan Email',
      keyboardType: TextInputType.emailAddress,
      onSave: viewModel.updateEmail,
      onChanged: viewModel.updateEmail,
      validator: (value) => InputValidators.validateEmail(value),
    );
  }

  CustomTextField _buildNomorHandphone(InputDataDiriViewModel viewModel) {
    return CustomTextField(
      textEditingController: viewModel.noHandphoneController,
      label: 'No. Handphone',
      hintText: 'Masukkan No. Handphone',
      prefixText: '+62 ',
      onSave: viewModel.updateNoHandphone,
      onChanged: viewModel.updateNoHandphone,
      keyboardType: TextInputType.number,
      validator: (value) => InputValidators.validateMobileNumber(value),
      withMaxLength: true,
      maxLength: 12,
    );
  }
}
