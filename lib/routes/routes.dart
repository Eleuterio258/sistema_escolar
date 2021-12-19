import 'package:flutter/material.dart';
import 'package:sistema_escolar/pages/dasbord/dashboard_page.dart';
import 'package:sistema_escolar/pages/falta/falta_page.dart';
import 'package:sistema_escolar/pages/horario/horario_page.dart';
import 'package:sistema_escolar/pages/login/login_page.dart';
import 'package:sistema_escolar/pages/nota/nota_page.dart';
import 'package:sistema_escolar/pages/pagamento/detalhe_pagamento_page.dart';
import 'package:sistema_escolar/pages/pagamento/pagamento_page.dart';
import 'package:sistema_escolar/pages/perfil_page/perfil_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'pagamento': (_) =>const  DetalhePagamentoPage(),
  'pagamentos': (_) =>const  PagamentoPage(),
  'falta': (_) => const FaltaPage(),
  'login': (_) => const LoginPage(),
  'dashboard': (_) => const DashboardPage(),
  'perfil': (_) => const PerfilPage(),
  'horario': (_) => const HorarioPage(),
  'notas': (_) => const NotaPage(),
};
