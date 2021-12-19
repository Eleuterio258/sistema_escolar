import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sistema_escolar/bloc/app_bloc.dart';
import 'package:sistema_escolar/components/mini_profile_componts.dart';

import 'package:sistema_escolar/res/colors/app_colors.dart';
import 'package:sistema_escolar/shared/model/pagamento_model.dart';

class PagamentoPage extends StatefulWidget {
  const PagamentoPage({Key? key}) : super(key: key);

  @override
  _PagamentoPageState createState() => _PagamentoPageState();
}

class _PagamentoPageState extends State<PagamentoPage> {
  late final PagamentoBloc? pagamentoBloc;

  @override
  void initState() {
    pagamentoBloc = BlocProvider.of<PagamentoBloc>(context);
    pagamentoBloc!.add(FetchPagamentoEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.green,
        centerTitle: true,
        title: const Text("Pagamento"),
        //leading: Icon(Icons.arrow_back),
        actions: [
          IconButton(
            icon: const Icon(Icons.message),
            onPressed: () {
              Navigator.of(context);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const MiniProfileComponts(),
          BlocBuilder<PagamentoBloc, PagamentoState>(
            builder: (context, state) {
              if (state is PagamentoInitialStste) {
                return buildLoading();
              }
              if (state is PagamentoLoadingStste) {
                return buildLoading();
              }
              if (state is PagamentoLoadedStste) {
                return buildList(state.pagamentos);
              }
              if (state is PagamentoErrorState) {
                return buildError(state.message);
              } else {
                return buildLoading();
              }
            },
          ),
        ],
      ),
    );
  }

  Widget buildLoading() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget buildError(String message) {
    return Center(
      child: Text(message),
    );
  }

  Widget buildList(List<Pagamento> pagamentos) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, int i) {
          return Column(
            children: [
              const SizedBox(height: 5),
              Card(
                shadowColor: AppColors.green,
                child: InkWell(
                  onTap: () {
                    // nevegarTela(context, 'pagamento');
                    Navigator.of(context).pushNamed('pagamento');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 10),
                        const Icon(Icons.accessible),
                        const SizedBox(width: 35),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Valor: ${pagamentos[i].valor} mts"),
                            Text(
                                "Parcela:10 - ${pagamentos[i].mes}  ${pagamentos[i].ano}"),
                            Row(
                              children: [
                                const Text("Situacao: "),
                                Text(pagamentos[i].status!,
                                    style: TextStyle(color: AppColors.green))
                              ],
                            ),
                            Row(
                              children: [
                                const Text("Multa:"),
                                Text("00,00 Mts",
                                    style: TextStyle(color: AppColors.green)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
