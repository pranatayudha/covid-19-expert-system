import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../application/app/app.router.dart';

class MainViewModel extends IndexTrackingViewModel {
  int index;

  final homeController = PageController();
  final _navigationService = NavigationService();

  MainViewModel({this.index = 0});

  void init() {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      homeController.jumpToPage(index);
      super.setIndex(index);
    });
  }

  @override
  void dispose() {
    homeController.dispose();
    super.dispose();
  }

  @override
  void setIndex(int value) {
    homeController.animateToPage(
      value,
      duration: const Duration(milliseconds: 500),
      curve: Curves.fastOutSlowIn,
    );
  }

  void onPageChanged(int value) {
    super.setIndex(value);
  }

  Future navigateToLogin() async {
    await _navigationService.navigateTo(Routes.loginView);
  }

  Future navigateToDataDiri() async {
    await _navigationService.navigateTo(Routes.inputDataDiriView);
  }

  Future navigateToRiwayat() async {
    await _navigationService.navigateTo(Routes.riwayatView);
  }

  Future navigateToAkun() async {
    await _navigationService.navigateTo(Routes.akunView);
  }
}
