import 'package:flutter/material.dart';
import 'package:sistema_escolar/components/buttom_appbar_components.dart';
import 'package:sistema_escolar/components/drawer_componts.dart';
import 'package:sistema_escolar/components/mini_profile_componts.dart';
import 'package:sistema_escolar/res/colors/app_colors.dart';
import 'package:sistema_escolar/utils/rotas_util.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.green,
        elevation: 0,
        title: const Text('DashBoard'),
      ),
      drawer: drawerComponts(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MiniProfileComponts(),

            //Container
            SizedBox(
              height: 400,
              child: GridView.count(
                crossAxisCount: 4,
                children: [
                  Card(
                    margin: const EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        nevegarTela(context, 'falta');
                      },
                      splashColor: Colors.green,
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.feedback,
                            ),
                            Text("Falta"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('pagamentos');
                      },
                      splashColor: Colors.green,
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(Icons.payment),
                            Text("Mensalidades"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('horario');
                      },
                      splashColor: Colors.green,
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(Icons.timer_off),
                            Text("Horario"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('notas');
                      },
                      splashColor: Colors.green,
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(Icons.timer_off),
                            Text("Notas"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const ButtomAppBarComponents(),
    );
  }
}
