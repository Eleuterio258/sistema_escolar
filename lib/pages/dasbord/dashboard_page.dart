import 'package:flutter/material.dart';
import 'package:sistema_escolar/components/buttom_appbar_components.dart';
import 'package:sistema_escolar/components/drawer_componts.dart';
import 'package:sistema_escolar/components/mini_profile_componts.dart';
import 'package:sistema_escolar/res/colors/app_colors.dart';
import 'package:sistema_escolar/utils/rotas_util.dart';

class DashboardPage extends StatefulWidget {
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
        title: Text('DashBoard'),
      ),
      drawer: drawerComponts(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MiniProfileComponts(),
            SizedBox(
              height: 400,
              child: Container(
                child: GridView.count(
                  crossAxisCount: 4,
                  children: [
                    Card(
                      margin: EdgeInsets.all(8),
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
                            children: [
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
                      margin: EdgeInsets.all(8),
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
                            children: [
                              Icon(Icons.payment),
                              Text("Mensalidades"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.all(8),
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
                            children: [
                              Icon(Icons.timer_off),
                              Text("Horario"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.all(8),
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
                            children: [
                              Icon(Icons.timer_off),
                              Text("Notas"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: ButtomAppBarComponents(),
    );
  }
}
