import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../application/app/app.locator.dart';
import '../../../application/app/app.router.dart';
import '../../../application/enums/bottom_sheet_type.dart';
import '../../../application/enums/dialog_type.dart';
import '../../../application/helpers/gender_formatter.dart';
import '../../../application/helpers/local_db.dart';
import '../../../application/services/local_db_service.dart';
import '../../../infrastructure/apis/user_api.dart';

class InputDataDiriViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _localDBService = locator<LocalDBService>();

  final _userAPI = locator<UserAPI>();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.onUserInteraction;

  final namaController = TextEditingController();
  void updateNama(String val) => namaController.value.copyWith(
        text: val,
        selection: TextSelection(
          baseOffset: val.length,
          extentOffset: val.length,
        ),
      );

  final tanggalLahirController = TextEditingController();
  void updateTanggalLahir(String val) =>
      tanggalLahirController.text = val.trim();

  final jenisKelaminController = TextEditingController();
  void updateJenisKelamin(String val) => jenisKelaminController.text = val;

  final emailController = TextEditingController();
  void updateEmail(String val) => emailController.value.copyWith(
        text: val,
        selection: TextSelection(
          baseOffset: val.length,
          extentOffset: val.length,
        ),
      );

  final noHandphoneController = TextEditingController();
  void updateNoHandphone(String val) => noHandphoneController.value.copyWith(
        text: val,
        selection: TextSelection(
          baseOffset: val.length,
          extentOffset: val.length,
        ),
      );

  Future<Map<String, dynamic>> _generateRegisterMap() async {
    return {
      'fullname': namaController.text.trim(),
      'dob': tanggalLahirController.text.trim(),
      'gender': GenderFormatter.forInput(jenisKelaminController.text.trim()),
      'email': emailController.text.trim(),
      'phoneNum': '+62${noHandphoneController.text.trim()}',
    };
  }

  Future _postData() async {
    final registerMap = await _generateRegisterMap();

    final res = await runBusyFuture(
      _userAPI.register(payload: registerMap),
    );

    res.fold(
      (errorMessage) {
        _showErrorDialog(errorMessage);
      },
      (isExist) {
        if (isExist) {
          _showWarningDialog();
        } else {
          _showSuccessDialog('Berhasil input data diri!');
        }
      },
    );
  }

  Future validateInputs() async {
    if (formKey.currentState!.validate()) {
      final response = await _bottomSheetService.showCustomSheet(
        variant: BottomSheetType.confirmation,
        data: {'title': 'Konfirmasi'},
      );

      if (response != null && response.confirmed) {
        formKey.currentState!.save();
        _postData();
      }
    } else {
      autoValidateMode = AutovalidateMode.always;
      _showValidationErrorDialog();
      notifyListeners();
    }
  }

  Future _showSuccessDialog(
    String successMessage,
  ) async {
    await _dialogService.showCustomDialog(
      variant: DialogType.success,
      description: successMessage,
      mainButtonTitle: 'OK',
    );

    navigateToInputGejalaView();
  }

  Future _showErrorDialog(String errorMessage) async {
    await _dialogService.showCustomDialog(
      variant: DialogType.error,
      title: 'Gagal',
      description: errorMessage,
      mainButtonTitle: 'COBA LAGI',
    );
  }

  Future _showWarningDialog() async {
    final res = await _dialogService.showCustomDialog(
      variant: DialogType.warning,
      title: 'Konfirmasi',
      description:
          'Data diri yang diinput pernah melakukan pengecekan gejala. Apakah Anda ingin melihat riwayat gejala dari data diri tersebut?',
      mainButtonTitle: 'Ya',
      secondaryButtonTitle: 'Tidak, lanjut input gejala',
    );

    if (res != null && res.confirmed) {
      _navigationService.navigateToRiwayatView();
    } else {
      navigateToInputGejalaView();
    }
  }

  Future _showValidationErrorDialog() async {
    await _dialogService.showCustomDialog(
      variant: DialogType.error,
      title: 'Invalid',
      description:
          'Satu atau beberapa isian ada yang kosong atau tidak sesuai validasi. Silahkan periksa kembali isian Anda.',
      mainButtonTitle: 'OK',
    );
  }

  Future navigateToInputGejalaView() async {
    await _navigationService.navigateTo(Routes.inputGejalaView);
  }

  Future navigateBack() async {
    if (_localDBService.userBoxIsNotEmpty()) {
      if (_localDBService.getUser()!.type!.contains('A')) {
        await _navigationService.clearStackAndShow(
          Routes.mainView,
          arguments: const MainViewArguments(
            isAdmin: true,
          ),
        );
      } else {
        await LocalDB.remove().then(
          (value) async =>
              await _navigationService.clearStackAndShow(Routes.mainView),
        );
      }
    } else {
      await _navigationService.clearStackAndShow(Routes.mainView);
    }
  }
}
