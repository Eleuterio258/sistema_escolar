import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sistema_escolar/repository/pagamento_repository.dart';
import 'package:sistema_escolar/routes/routes.dart';
import 'bloc/bloc/pagamento/pagamento_bloc.dart';
import 'bloc/bloc/seach/search_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              PagamentoBloc(pagamentoRepository: PagamentoRepository()),
        ),
        BlocProvider(
          create: (context) =>
              SearchBloc(pagamentoRepository: PagamentoRepository()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SIGA APP',
        theme: ThemeData(
          primaryColor: Color.fromARGB(255, 4, 125, 141),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: 'dashboard',
        routes: appRoutes,
      ),
    );
  }
}
