
import 'package:sistema_escolar/shared/model/pagamento_model.dart';
abstract class IPagamentoRepository {
  Future<List<Pagamento>?> findAll();
  

}




