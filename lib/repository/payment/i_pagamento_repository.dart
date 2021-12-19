
import 'package:sistema_escolar/shared/model/pagamento_model.dart';
import 'package:sistema_escolar/shared/model/user_model.dart';
abstract class IPagamentoRepository {
  Future<List<Pagamento>> findAll();
  Future<bool> delete(id);
  Future<List<Pagamento>> seachPagamento(String query);
  Future<List<User>> findAllPagamento(String query);
}
