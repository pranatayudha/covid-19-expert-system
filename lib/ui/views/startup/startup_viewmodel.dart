import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:places_service/places_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../application/app/app.locator.dart';
import '../../../application/app/app.router.dart';
import '../../../application/models/user.dart';
import '../../../application/services/connectivity_service.dart';
import '../../../application/services/local_db_service.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _connectivityService = locator<ConnectivityService>();
  final _placesService = locator<PlacesService>();
  final _localDBService = locator<LocalDBService>();

  Future runStartupLogic() async {
    final connectivityResult = await _connectivityService.checkConnectivity();

    if (connectivityResult == ConnectivityResult.none) {
      await _navigationService.replaceWith(Routes.noNetwork);
    } else {
      _placesService.initialize(apiKey: '');

      final hasUser = _localDBService.userBoxIsNotEmpty();

      if (hasUser) {
        final user = _localDBService.getUser();
        if (user!.type!.contains('A')) {
          await setTimeout(
            callback: _navigationService.clearStackAndShow(
              Routes.mainView,
              arguments: const MainViewArguments(isAdmin: true),
            ),
          );
        } else {
          await setTimeout(
            callback: _navigationService.clearStackAndShow(Routes.mainView),
          );
        }
      } else {
        await setTimeout(
          callback: _navigationService.clearStackAndShow(Routes.mainView),
        );
      }
    }
  }

  Future<void> setTimeout({required callback}) async {
    Timer(
      const Duration(seconds: 5),
      () async => await callback,
    );
  }
}
