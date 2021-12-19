
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sistema_escolar/bloc/pagamento/pagamento_bloc.dart';
import 'package:sistema_escolar/repository/payment/pagamento_repository.dart';
import 'package:sistema_escolar/routes/routes.dart';

class AppWidget   extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              PagamentoBloc(pagamentoRepository: PagamentoRepository()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SIGA APP',
        theme: ThemeData(
          primaryColor: const Color.fromARGB(255, 4, 125, 141),
         
        ),
        initialRoute: 'dashboard',
        routes: appRoutes,
      ),
    );
  }
}
