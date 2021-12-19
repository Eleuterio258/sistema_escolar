import 'dart:convert';
import 'i_pagamento_repository.dart';
import 'package:sistema_escolar/shared/model/pagamento_model.dart';
import 'package:http/http.dart' as http;
import 'package:sistema_escolar/shared/model/user_model.dart';
import 'package:sistema_escolar/utils/url_base.dart';

class PagamentoRepository extends IPagamentoRepository {
  @override
  Future<List<Pagamento>> findAll() async {
    var respomse = await http.get(UrlBase.pagamentos);
    if (respomse.statusCode == 200) {
      var data = json.decode(respomse.body);
      List<Pagamento> pagamentos = PagamentoModel.fromJson(data).pagamentos;
      return pagamentos;
    } else {
      throw Exception('Erro ao buscar pagamentos');
    }
  }

  @override
  Future<bool> delete(id) async {
    var respomse = await http.delete(UrlBase.pagamentos);
    if (respomse.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<List<Pagamento>> seachPagamento(String query) async {
    var respomse = await http.get(UrlBase.pagamentos);
    if (respomse.statusCode == 200) {
      var data = json.decode(respomse.body);
      List<Pagamento> pagamentos = PagamentoModel.fromJson(data).pagamentos;
      return pagamentos;
    } else {
      throw Exception('Erro ao buscar pagamentos');
    }
  }

  @override
  Future<List<User>> findAllPagamento(String query) async {
    var respomse = await http.get(UrlBase.pagamentos);
    if (respomse.statusCode == 200) {
      var data = json.decode(respomse.body);
      List<User> user = User.fromJson(data) as List<User>;
      return user;
    } else {
      throw Exception('Erro ao buscar pagamentos');
    }
  }
}



