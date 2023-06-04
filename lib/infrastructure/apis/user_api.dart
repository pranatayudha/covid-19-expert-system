import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../application/app/app.locator.dart';
import '../../application/app/constants/endpoint.dart';
import '../../application/helpers/dio_error_type_parser.dart';
import '../../application/models/user.dart';
import '../../application/services/local_db_service.dart';

class UserAPI {
  final _dio = locator<Dio>();
  final _localDBService = locator<LocalDBService>();

  Future<Either<String, bool>> register({
    required Map<String, dynamic> payload,
  }) async {
    try {
      final res = await _dio.post(Endpoint.register, data: payload);

      if (res.data['code'] != 200) {
        return Left(res.data['message'] as String);
      }

      final user = User.fromJson(res.data['data'] as Map<String, dynamic>);

      if (!_localDBService.userBoxIsNotEmpty()) {
        _localDBService.storeUser(user);
        _localDBService.storeToken(user.accessToken!);
      }

      return Right(res.data['data']['isExist']);
    } on DioError catch (e) {
      final errorMessage = DioErrorTypeParser.parseToCustomMessage(e);

      return Left(errorMessage);
    }
  }

  Future<Either<String, User>> login({
    required Map<String, dynamic> payload,
  }) async {
    try {
      final res = await _dio.post(Endpoint.login, data: payload);

      if (res.data['code'] != 200) {
        return Left(res.data['message'] as String);
      }

      final user = User.fromJson(res.data['data'] as Map<String, dynamic>);

      _localDBService.storeUser(user);
      _localDBService.storeToken(user.accessToken!);

      return Right(user);
    } on DioError catch (e) {
      final errorMessage = DioErrorTypeParser.parseToCustomMessage(e);

      return Left(errorMessage);
    }
  }
}
