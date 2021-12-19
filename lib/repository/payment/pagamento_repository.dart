
import 'package:dio/dio.dart';
import 'package:sistema_escolar/repository/payment/i_pagamento_repository.dart';
import 'package:sistema_escolar/shared/model/pagamento_model.dart';

import 'package:sistema_escolar/utils/url_base.dart';

class PagamentoRepository extends IPagamentoRepository {
  final dio = Dio();
  @override
  Future<List<Pagamento>?> findAll() async {
    final response = await dio.get(UrlBase.pagamentos);
    try {
      return (response.data as List)
          .map((data) => Pagamento.fromJson(data))
          .toList();
    } on DioError catch (dioError) {
      return dioError.response!.data;
    } catch (e) {
      return [];
    }
  }


 
}
