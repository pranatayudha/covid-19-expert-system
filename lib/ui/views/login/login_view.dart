import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import '../../../application/app/constants/custom_color.dart';
import '../../../application/app/constants/image_constants.dart';
import '../../../application/helpers/input_validators.dart';
import '../../../application/helpers/ui_helpers.dart';
import '../../shared/custom_textfield.dart';
import '../../shared/network_sensitive.dart';
import '../../shared/styles.dart';
import 'login_viewmodel.dart';
import 'widgets/login_app_version.dart';
import 'widgets/login_button.dart';

class LoginView extends ViewModelBuilderWidget<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  @override
  LoginViewModel viewModelBuilder(BuildContext context) => LoginViewModel();

  @override
  void onViewModelReady(LoginViewModel viewModel) => viewModel.initialize();

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return NetworkSensitive(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              _buildBackgroundOverlay(),
              _buildBody(context, viewModel),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildBackgroundOverlay() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageConstants.bgOverlay),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Padding _buildBody(BuildContext context, LoginViewModel viewModel) {
    return Padding(
      padding:
          EdgeInsets.fromLTRB(32.w, statusBarHeight(context) + 34.h, 32.w, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Rekomendasi Solusi',
            style: tsHeading4.copyWith(
              color: CustomColor.secondaryBlue,
            ),
          ),
          Text(
            'Gejala COVID-19',
            style: tsHeading4.copyWith(
              color: CustomColor.lightOrange,
            ),
          ),
          SizedBox(height: 32.h),
          Form(
            key: viewModel.formKey,
            autovalidateMode: viewModel.autoValidateMode,
            child: Column(
              children: [
                CustomTextField(
                  label: 'Email',
                  hintText: 'Masukkan Email',
                  onSave: viewModel.saveEmail,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) => InputValidators.validateEmail(value),
                ),
                SizedBox(height: 4.h),
                CustomTextField(
                  label: 'Password',
                  hintText: 'Masukkan Password',
                  onSave: viewModel.savePassword,
                  obscureText: viewModel.isObscured,
                  withObscureIcon: true,
                  onTap: viewModel.toggleShowPassword,
                  validator: (value) => InputValidators.validatePassword(value),
                ),
                const LoginButton(),
                const LoginAppVersion(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
