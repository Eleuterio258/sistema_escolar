import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:sistema_escolar/shared/model/pagamento_model.dart';

class PagamentoState extends Equatable {
  @override
  List<Object> get props => [];
}

class PagamentoInitialStste extends PagamentoState {
  @override
  List<Object> get props => [];
}

class PagamentoLoadingStste extends PagamentoState {
  @override
  List<Object> get props => [];
}

class PagamentoLoadedStste extends PagamentoState {

  final List<Pagamento> pagamentos;

  PagamentoLoadedStste({@required this.pagamentos});
  @override
  List<Object> get props => [];
}

class PagamentoErrorState extends PagamentoState {
  final String message;

  PagamentoErrorState({this.message});
  @override
  List<Object> get props => [];
}
