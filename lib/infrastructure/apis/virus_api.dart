import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../application/app/app.locator.dart';
import '../../application/app/constants/endpoint.dart';
import '../../application/models/virus.dart';

class VirusAPI {
  final _dio = locator<Dio>();

  Future<Either<String, Map<String, dynamic>>> checkVirus({
    required Map<String, bool> payload,
  }) async {
    try {
      final res = await _dio.post(
        Endpoint.checkVirus,
        data: payload,
      );

      return Right(res.data['data']);
    } catch (e) {
      return const Left(
        'Satu atau beberapa isian ada yang kosong atau tidak sesuai validasi. Silahkan periksa kembali isian Anda.',
      );
    }
  }

  Future<Either<String, Virus>> getById({
    required String idVirus,
  }) async {
    try {
      final res = await _dio.get(
        '${Endpoint.getVirusById}${int.parse(idVirus)}',
      );

      return Right(Virus.fromJson(res.data['data']));
    } catch (e) {
      return const Left('Data tidak ditemukan');
    }
  }
}
