import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../application/app/app.locator.dart';
import '../../../application/app/app.router.dart';
import '../../../application/enums/dialog_type.dart';
import '../../../application/models/solusi.dart';
import '../../../application/models/user.dart';
import '../../../application/services/local_db_service.dart';
import '../../../infrastructure/apis/solution_api.dart';

class SolusiViewModel extends FutureViewModel {
  final List idSymptoms;
  SolusiViewModel({required this.idSymptoms});

  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();
  final _localDBService = locator<LocalDBService>();
  final _solutionAPI = locator<SolutionAPI>();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  User? _user;

  @override
  Future futureToRun() => getData();

  Future getData() async {
    await fetchSolution();

    if (_localDBService.userBoxIsNotEmpty()) {
      _user = _localDBService.getUser();
    }
  }

  List<Solusi>? _listSolusi;
  List<Solusi> get listSolusi => _listSolusi!;
  Future fetchSolution() async {
    final res = await runBusyFuture(
      _solutionAPI.get(idSymptoms: idSymptoms),
    );

    res.fold(
      (errorMessage) => _showErrorDialog(errorMessage),
      (lisSolusi) {
        _listSolusi = lisSolusi;
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
