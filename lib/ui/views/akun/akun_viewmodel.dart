import 'package:package_info_plus/package_info_plus.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../application/app/app.locator.dart';
import '../../../application/app/app.router.dart';
import '../../../application/enums/dialog_type.dart';
import '../../../application/models/user.dart';
import '../../../application/services/local_db_service.dart';

class AkunViewModel extends BaseViewModel {
  final _localDBService = locator<LocalDBService>();
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();

  late PackageInfo _packageInfo;

  User? _user;
  bool _isNotificationSwitched = false;
  String? _version;
  String? _buildNumber;

  User? get user => _user;

  bool get isNotificationSwitched => _isNotificationSwitched;

  String? get version => _version;

  String? get buildNumber => _buildNumber;

  Future initialize() async {
    _user = _localDBService.getUser();
    await _getVersion();
  }

  Future _getVersion() async {
    _packageInfo = await PackageInfo.fromPlatform();
    _version = _packageInfo.version;
    _buildNumber = _packageInfo.buildNumber;
    notifyListeners();
  }

  void updateIsNotificationSwitched() {
    _isNotificationSwitched = !_isNotificationSwitched;
    notifyListeners();
  }

  Future logout() async {
    final response = await _dialogService.showCustomDialog(
      variant: DialogType.base,
      title: 'Konfirmasi',
      description: 'Apakah Anda yakin ingin keluar dari aplikasi ini?',
      mainButtonTitle: 'LOG OUT',
    );

    if (response!.confirmed) {
      _localDBService.removeUser();
      _localDBService.removeToken();

      _navigationService.clearStackAndShow(Routes.mainView);
    }
  }
}
