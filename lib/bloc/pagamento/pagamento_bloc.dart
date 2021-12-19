import 'dart:async';
import 'package:sistema_escolar/bloc/app_bloc.dart';
import 'package:sistema_escolar/repository/payment/pagamento_repository.dart';

import 'package:sistema_escolar/shared/model/pagamento_model.dart';
import 'package:bloc/bloc.dart';

class PagamentoBloc extends Bloc<PagamentoEvent, PagamentoState> {
  final PagamentoRepository pagamentoRepository;
  PagamentoBloc({required this.pagamentoRepository})
      : super(PagamentoInitialStste());

  Stream<PagamentoState> mapEventToState(PagamentoEvent event) async* {
    if (event is FetchPagamentoEvent) {
      yield PagamentoLoadingStste();

      try {
        List<Pagamento>? pagamentos = await pagamentoRepository.findAll();
        yield PagamentoLoadedStste(pagamentos: pagamentos!);
      } catch (e) {
        yield PagamentoErrorState(message: e.toString());
      }
    }
  }
}
