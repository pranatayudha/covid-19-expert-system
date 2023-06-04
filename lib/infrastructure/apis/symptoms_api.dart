import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../application/app/app.locator.dart';
import '../../application/app/constants/endpoint.dart';
import '../../application/helpers/dio_error_type_parser.dart';

class SymptomsAPI {
  final _dio = locator<Dio>();

  Future<Either<String, List>> get() async {
    try {
      final res = await _dio.get(Endpoint.getSymptoms);

      if (res.data['code'] != 200) {
        return Left(res.data['message'] as String);
      }

      final listGejala = List.from(
        res.data['data'].map(
          (i) => i as Map<String, dynamic>,
        ),
      );

      return Right(listGejala);
    } on DioError catch (e) {
      final errorMessage = DioErrorTypeParser.parseToCustomMessage(e);

      return Left(errorMessage);
    }
  }
}
