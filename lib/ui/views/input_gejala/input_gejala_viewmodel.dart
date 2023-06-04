import 'dart:async';
import 'dart:developer';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../application/app/app.locator.dart';
import '../../../../application/enums/dialog_type.dart';
import '../../../application/app/app.router.dart';
import '../../../application/enums/bottom_sheet_type.dart';
import '../../../infrastructure/apis/symptoms_api.dart';
import '../../../infrastructure/apis/virus_api.dart';

class InputGejalaViewModel extends FutureViewModel {
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _symptomsAPI = locator<SymptomsAPI>();
  final _virusAPI = locator<VirusAPI>();

  @override
  Future futureToRun() => getSymptoms();

  List _listGejala = [];
  List get listGejala => _listGejala;
  Future getSymptoms() async {
    final res = await runBusyFuture(
      _symptomsAPI.get(),
    );

    res.fold(
      (errorMessage) => _listGejala = [],
      (listGejala) {
        _listGejala = listGejala;
        notifyListeners();
      },
    );
  }

  List multipleSelected = [];
  void updateRadioButtonVal(int index, bool value) {
    _listGejala[index]['value'] = value;
    if (multipleSelected.contains(_listGejala[index])) {
      multipleSelected.remove(_listGejala[index]);
    } else {
      multipleSelected.add(_listGejala[index]);
    }
    notifyListeners();
  }

  Future<Map<String, bool>> _generateInputGejalaMap() async {
    return {
      's1': _listGejala[0]['value'],
      's2': _listGejala[1]['value'],
      's3': _listGejala[2]['value'],
      's4': _listGejala[3]['value'],
      's5': _listGejala[4]['value'],
      's6': _listGejala[5]['value'],
      's7': _listGejala[6]['value'],
      's8': _listGejala[7]['value'],
      's9': _listGejala[8]['value'],
      's10': _listGejala[9]['value'],
      's11': _listGejala[10]['value'],
      's12': _listGejala[11]['value'],
      's13': _listGejala[12]['value'],
      's14': _listGejala[13]['value'],
      's15': _listGejala[14]['value'],
      's16': _listGejala[15]['value'],
      's17': _listGejala[16]['value'],
      's18': _listGejala[17]['value'],
      's19': _listGejala[18]['value'],
      's20': _listGejala[19]['value'],
      's21': _listGejala[20]['value'],
    };
  }

  Future _postData() async {
    final inputGejalaMap = await _generateInputGejalaMap();

    final res = await runBusyFuture(
      _virusAPI.checkVirus(payload: inputGejalaMap),
    );

    res.fold(
      (errorMessage) {
        _showErrorDialog(errorMessage);
      },
      (successData) {
        _showSuccessDialog(
          'Berhasil input gejala!',
          successData,
        );
      },
    );
  }

  Future _showSuccessDialog(
    String successMessage,
    Map<String, dynamic> successData,
  ) async {
    await _dialogService.showCustomDialog(
      variant: DialogType.success,
      description: successMessage,
      mainButtonTitle: 'OK',
    );

    if (successData['idVirus'] != 0) {
      navigateToSummary(successData);
    } else {
      navigateToSolusi(successData);
    }
  }

  Future navigateToSummary(
    Map<String, dynamic> successData,
  ) async {
    await _navigationService.navigateTo(
      Routes.summaryView,
      arguments: SummaryViewArguments(
        idVirusesMapping: successData['idVirusesMapping'],
        idVirus: successData['idVirus'].toString(),
        idSymptoms: successData['idSymptoms'],
      ),
    );
  }

  Future navigateToSolusi(
    Map<String, dynamic> successData,
  ) async {
    await _navigationService.navigateTo(
      Routes.solusiView,
      arguments: SolusiViewArguments(
        idSymptoms: successData['idSymptoms'].toList(),
      ),
    );
  }

  Future validateInputs() async {
    final response = await _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.confirmation,
      data: {
        'title': 'Peringatan',
        'firstLine': 'Sudah yakin dengan gejala yang Anda pilih?',
        'negativeButtonText': 'BELUM',
        'positiveButtonText': 'SUDAH',
      },
    );

    if (response != null && response.confirmed) {
      _postData();
    }
  }

  Future _showErrorDialog(String errorMessage) async {
    await _dialogService.showCustomDialog(
      variant: DialogType.error,
      title: 'Gagal',
      description: errorMessage,
      mainButtonTitle: 'COBA LAGI',
    );
  }

  Future navigateBack() async {
    _navigationService.back();
  }
}
