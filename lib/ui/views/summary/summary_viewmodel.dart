import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../application/app/app.locator.dart';
import '../../../application/app/app.router.dart';
import '../../../application/enums/dialog_type.dart';
import '../../../application/models/user.dart';
import '../../../application/models/virus.dart';
import '../../../application/services/local_db_service.dart';
import '../../../infrastructure/apis/virus_api.dart';

class SummaryViewModel extends FutureViewModel {
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();
  final _localDBService = locator<LocalDBService>();
  final _virusAPI = locator<VirusAPI>();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  final String idVirusesMapping;
  final String idVirus;
  final List idSymptoms;
  SummaryViewModel({
    required this.idVirusesMapping,
    required this.idVirus,
    required this.idSymptoms,
  });

  User? _user;

  @override
  Future futureToRun() => getData();

  Future getData() async {
    await fetchVirusById();

    if (_localDBService.userBoxIsNotEmpty()) {
      _user = _localDBService.getUser();
    }
  }

  Virus? _virus;
  Virus? get virus => _virus;
  Future fetchVirusById() async {
    final res = await runBusyFuture(
      _virusAPI.getById(idVirus: idVirus),
    );

    res.fold(
      (errorMessage) => _showErrorDialog(errorMessage),
      (virusData) {
        _virus = virusData;
        notifyListeners();
      },
    );
  }

  Future _showErrorDialog(String errorMessage) async {
    await _dialogService.showCustomDialog(
      variant: DialogType.error,
      title: 'Gagal',
      description: errorMessage,
      mainButtonTitle: 'COBA LAGI',
    );
  }

  Future navigateToSolusi() async {
    await _navigationService.navigateTo(
      Routes.solusiView,
      arguments: SolusiViewArguments(
        idSymptoms: idSymptoms,
      ),
    );
  }

  Future navigateToHome() async {
    if (_user!.type!.contains('A')) {
      await _navigationService.clearStackAndShow(
        Routes.mainView,
        arguments: const MainViewArguments(
          isAdmin: true,
        ),
      );
    } else {
      _localDBService.removeToken();
      _localDBService.removeUser();

      await _navigationService.clearStackAndShow(Routes.mainView);
    }
  }
}
