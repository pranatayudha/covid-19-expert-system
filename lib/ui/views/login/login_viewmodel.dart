import 'dart:async';

import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../application/app/app.locator.dart';
import '../../../application/app/app.router.dart';
import '../../../application/enums/dialog_type.dart';
import '../../../application/services/local_db_service.dart';
import '../../../infrastructure/apis/user_api.dart';

class LoginViewModel extends BaseViewModel {
  final _localDBService = locator<LocalDBService>();
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();
  final _userAPI = locator<UserAPI>();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;

  late String? _email;
  late String? _password;
  late PackageInfo _packageInfo;
  bool _isObscured = true;
  String? _version;
  String? _buildNumber;

  GlobalKey<FormState> get formKey => _formKey;

  AutovalidateMode get autoValidateMode => _autoValidateMode;

  bool get isObscured => _isObscured;

  String? get version => _version;

  String? get buildNumber => _buildNumber;

  void saveEmail(String value) => _email = value.trim();

  void savePassword(String value) => _password = value.trim();

  void initialize() => _getVersion();

  Future _getVersion() async {
    _packageInfo = await PackageInfo.fromPlatform();
    _version = _packageInfo.version;
    _buildNumber = _packageInfo.buildNumber;
    notifyListeners();
  }

  void toggleShowPassword() {
    _isObscured = !_isObscured;
    notifyListeners();
  }

  void validateInputs() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      _login();
    } else {
      _autoValidateMode = AutovalidateMode.always;
      notifyListeners();
    }
  }

  Future _login() async {
    final response = await runBusyFuture(
      _userAPI.login(
        payload: {
          'email': _email,
          'password': _password,
        },
      ),
    );

    response.fold(
      (errorMessage) {
        _localDBService.removeToken();
        _showLoginErrorDialog(errorMessage);
      },
      (user) async {
        _navigationService.clearStackAndShow(
          Routes.mainView,
          arguments: const MainViewArguments(isAdmin: true),
        );
      },
    );
  }

  Future _showLoginErrorDialog(String errorMessage) async {
    await _dialogService.showCustomDialog(
      variant: DialogType.error,
      title: 'Login Gagal',
      description: errorMessage,
      mainButtonTitle: 'COBA LAGI',
    );
  }
}
