import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../application/app/app.locator.dart';
import '../../application/app/constants/endpoint.dart';
import '../../application/models/solusi.dart';

class SolutionAPI {
  final _dio = locator<Dio>();

  Future<Either<String, List<Solusi>>> get({
    required List idSymptoms,
  }) async {
    try {
      final res = await _dio.post(
        Endpoint.getSolution,
        data: {
          'idSymptoms': idSymptoms,
        },
      );

      print(idSymptoms);

      print(res.data);

      final listSolusi = List<Solusi>.from(
        res.data['data'].map(
          (i) => i as Map<String, dynamic>,
        ),
      );

      return Right(listSolusi);
    } catch (e) {
      return const Left(
        'Gagal mendapatkan data solusi',
      );
    }
  }
}
