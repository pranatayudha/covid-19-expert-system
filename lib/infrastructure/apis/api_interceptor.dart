import 'package:dio/dio.dart';

import '../../application/app/app.locator.dart';
import '../../application/app/constants/endpoint.dart';
import '../../application/services/local_db_service.dart';

class ApiInterceptor extends InterceptorsWrapper {
  final _localDBService = locator<LocalDBService>();

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (options.path == Endpoint.register || options.path == Endpoint.login) {
      options.headers['Authorization'] =
          'Basic Y292aWQtMTktZXhwZXJ0LXN5c3RlbS1hcGk6JDJhJDA0JGphRS9pb2F1aE4ucllmMWpQWUJOUWVLY3NxREZQNmU3YVlHSzBncTAzTklsT3hLaUI4RVRl';
    } else {
      final token = _localDBService.getToken();
      options.contentType = Headers.formUrlEncodedContentType;
      print(token);
      options.headers['Authorization'] = 'Bearer $token';
    }

    super.onRequest(options, handler);
  }

  // @override
  // void onError(DioError err, ErrorInterceptorHandler handler) {
  //   if (err.response!.statusCode == 401) {
  //     _showUnauthorizedDialog();
  //   }

  //   super.onError(err, handler);
  // }

  // Future _showUnauthorizedDialog() async {
  //   await locator<DialogService>().showCustomDialog(
  //     variant: DialogType.base,
  //     title: 'Unauthorized',
  //     description:
  //         'Mohon maaf, permintaan Anda tidak bisa dipenuhi saat ini, silahkan login ulang.',
  //     mainButtonTitle: 'OK',
  //   );
  //   _removeUserAndTokenInLocalDB();
  //   _navigationService.clearStackAndShow(Routes.loginView);
  // }

  // void _removeUserAndTokenInLocalDB() {
  //   _localDBService.removeUser();
  //   _localDBService.removeToken();
  // }
}
