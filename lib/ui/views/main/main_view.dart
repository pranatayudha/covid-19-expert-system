import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import '../../../application/app/constants/custom_color.dart';
import '../../../application/app/constants/icon_constants.dart';
import '../../shared/network_sensitive.dart';
import '../home/home_view.dart';
import 'main_viewmodel.dart';
import 'widgets/floating_navigation_item.dart';

class MainView extends ViewModelBuilderWidget<MainViewModel> {
  final bool? isAdmin;
  const MainView({
    Key? key,
    this.isAdmin = false,
  }) : super(key: key);

  @override
  MainViewModel viewModelBuilder(BuildContext context) => MainViewModel();

  @override
  void onViewModelReady(MainViewModel viewModel) => viewModel.init();

  @override
  Widget builder(
    BuildContext context,
    MainViewModel viewModel,
    Widget? child,
  ) {
    return NetworkSensitive(
      child: WillPopScope(
        onWillPop: () async => true,
        child: Scaffold(
          body: Stack(
            children: [
              PageView(
                allowImplicitScrolling: false,
                controller: viewModel.homeController,
                onPageChanged: (i) => viewModel.onPageChanged(i),
                children: const [
                  HomeView(),
                ],
              ),
              _floatingNavigation(viewModel, context),
            ],
          ),
        ),
      ),
    );
  }

  Positioned _floatingNavigation(
    MainViewModel vm,
    BuildContext context,
  ) {
    return Positioned(
      left: 16.w,
      right: 16.w,
      bottom: 20.h,
      child: SafeArea(
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: CustomColor.secondaryBlue,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: isAdmin!
                ? [
                    FloatingNavigationItem(
                      isAdmin: isAdmin!,
                      isSelected: vm.currentIndex == 0,
                      iconPath: vm.currentIndex == 0
                          ? IconConstants.navBeranda
                          : IconConstants.navBerandaOutlined,
                      label: 'Beranda',
                      onTap: () => vm.setIndex(0),
                    ),
                    FloatingNavigationItem(
                      isAdmin: isAdmin!,
                      isSelected: vm.currentIndex == 1,
                      iconPath: vm.currentIndex == 1
                          ? IconConstants.navPipeline
                          : IconConstants.navPipelineOutlined,
                      label: 'Cek Gejala',
                      onTap: vm.navigateToDataDiri,
                    ),
                    FloatingNavigationItem(
                      isAdmin: isAdmin!,
                      isSelected: vm.currentIndex == 2,
                      iconPath: vm.currentIndex == 2
                          ? IconConstants.navPrakarsa
                          : IconConstants.navPrakarsaOutlined,
                      label: 'Riwayat',
                      onTap: vm.navigateToRiwayat,
                    ),
                    FloatingNavigationItem(
                      isAdmin: isAdmin!,
                      isSelected: vm.currentIndex == 3,
                      iconPath: vm.currentIndex == 3
                          ? IconConstants.navAkun
                          : IconConstants.navAkunOutlined,
                      label: 'Akun',
                      onTap: vm.navigateToAkun,
                    ),
                  ]
                : [
                    FloatingNavigationItem(
                      isAdmin: isAdmin!,
                      isSelected: vm.currentIndex == 0,
                      iconPath: vm.currentIndex == 0
                          ? IconConstants.navBeranda
                          : IconConstants.navBerandaOutlined,
                      label: 'Beranda',
                      onTap: () => vm.setIndex(0),
                    ),
                    FloatingNavigationItem(
                      isAdmin: isAdmin!,
                      isSelected: vm.currentIndex == 1,
                      iconPath: vm.currentIndex == 1
                          ? IconConstants.navPipeline
                          : IconConstants.navPipelineOutlined,
                      label: 'Cek Gejala',
                      onTap: vm.navigateToDataDiri,
                    ),
                    FloatingNavigationItem(
                      isAdmin: isAdmin!,
                      isSelected: vm.currentIndex == 2,
                      iconPath: vm.currentIndex == 2
                          ? IconConstants.navAkun
                          : IconConstants.navAkunOutlined,
                      label: 'Admin',
                      onTap: vm.navigateToLogin,
                    ),
                  ],
          ),
        ),
      ),
    );
  }
}
