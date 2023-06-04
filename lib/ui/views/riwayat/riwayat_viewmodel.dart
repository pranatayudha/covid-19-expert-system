import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../application/app/app.locator.dart';
import '../../../application/app/app.router.dart';
import '../../../application/models/riwayat.dart';

final loadingIndicatorHistoryListItem = Riwayat(id: '^');

class RiwayatViewModel extends FutureViewModel {
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();

  static const int _itemRequestThreshold = 20;
  int _currentPage = 0;

  List<Riwayat> _riwayatList = [];

  List<Riwayat> get riwayatList => _riwayatList;

  @override
  Future futureToRun() async => await fetch(
        page: 1,
        recordCount: _itemRequestThreshold,
        textSearch: '',
        status: '',
      );

  Future fetch({
    int? page,
    String? textSearch,
    dynamic recordCount,
    dynamic status,
  }) async {
    _riwayatList.addAll([
      Riwayat(
        id: '2',
        fullname: 'Muhammad Iqbal Pranatayudha',
        dob: '24 Mei 1999',
        virusName: 'Beta',
        code: 'B.1.351',
        subVarian: '-',
        createdAt: '18 Januari 2023',
      ),
      Riwayat(
        id: '1',
        fullname: 'Muhammad Iqbal Pranatayudha',
        dob: '24 Mei 1999',
        virusName: 'Omnicron',
        code: 'B.1.1.529',
        subVarian: 'BA.2.75',
        createdAt: '18 Desember 2022',
      ),
    ]);
    notifyListeners();

    // final res = await runBusyFuture(
    //   _riwayatAPI.fetch(
    //     page: page,
    //     recordCount: recordCount,
    //     textSearch: textSearch,
    //     status: status,
    //   ),
    // );

    // res.fold(
    //   (errorMessage) => _riwayatList = [],
    //   (list) {
    //     _riwayatList = list;
    //   },
    // );
  }

  Future fetchWithoutLimit({
    int? page,
    String? textSearch,
    dynamic status,
    dynamic loanType,
  }) async {
    // final res = await runBusyFuture(
    //   _riwayatAPI.fetchWithoutLimit(
    //     page: page,
    //     textSearch: textSearch,
    //     status: status,
    //     loanType: loanType,
    //   ),
    // );

    // res.fold(
    //   (errorMessage) => _riwayatList = [],
    //   (list) => _riwayatList = list,
    // );
  }

  Future refreshData() async => await fetch(
        page: 1,
        recordCount: _itemRequestThreshold,
        textSearch: '',
        status: '',
      );

  Future handleItemCreated(int index) async {
    final itemPosition = index + 1;
    final requestMoreData =
        itemPosition % _itemRequestThreshold == 0 && itemPosition != 0;
    final pageToRequest = itemPosition ~/ _itemRequestThreshold;

    if (requestMoreData && pageToRequest > _currentPage) {
      _currentPage = pageToRequest;
      _showLoadingIndicator();

      // final res = await _riwayatAPI.fetch(
      //   page: _currentPage,
      //   recordCount: _itemRequestThreshold,
      //   textSearch: '',
      //   status: '',
      // );

      // res.fold(
      //   (errorMessage) => _riwayatList = [],
      //   (list) => _riwayatList.addAll(list),
      // );

      _removeLoadingIndicator();
    }
  }

  void _showLoadingIndicator() {
    _riwayatList.add(loadingIndicatorHistoryListItem);
    notifyListeners();
  }

  void _removeLoadingIndicator() {
    _riwayatList.remove(loadingIndicatorHistoryListItem);
    notifyListeners();
  }

  Future search(String textSearch) async {
    await fetchWithoutLimit(
      page: 1,
      textSearch: textSearch,
    );
    notifyListeners();
  }

  Future navigateToRiwayatDetail() async {
    _navigationService.navigateToRiwayatDetailView();
  }
}
