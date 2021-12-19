import 'package:flutter/material.dart';
import 'package:sistema_escolar/components/horario_compnents/dias_semana.dart';
import 'package:sistema_escolar/components/horario_compnents/disciplina_components.dart';
import 'package:sistema_escolar/components/mini_profile_componts.dart';
import 'package:sistema_escolar/res/colors/app_colors.dart';

class HorarioPage extends StatefulWidget {
  @override
  _HorarioPageState createState() => _HorarioPageState();
}

class _HorarioPageState extends State<HorarioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.green,
        title: Text(
          'Horário',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.vpn_key,
            color: Colors.white,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Column(
        children: [
          MiniProfileComponts(),
          SizedBox(height: 20),
          Expanded(
            flex: 2,
            child: PageView.builder(
              itemBuilder: (context, int index) {
                return Container(
                  margin: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      diasSemana(
                          dia: "Segunda-Feira", ano: "4 de Janeiro de 2021"),
                      SizedBox(height: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "MANHA",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              DisciplinaComponents(
                                  horas: '07:15',
                                  titolo: 'GEO',
                                  titoloC: Colors.brown[100],
                                  horasC: Colors.pink),
                              SizedBox(width: 5),
                              DisciplinaComponents(
                                  horas: '08:15',
                                  titolo: 'GEO',
                                  titoloC: Colors.brown[100],
                                  horasC: Colors.pink),
                              SizedBox(width: 5),
                              DisciplinaComponents(
                                  horas: '08:15',
                                  titolo: 'FIS',
                                  titoloC: Colors.brown[100],
                                  horasC: Colors.pink),
                              SizedBox(width: 5),
                              DisciplinaComponents(
                                  horas: '08:15',
                                  titolo: 'FIS',
                                  titoloC: Colors.brown[100],
                                  horasC: Colors.pink),
                              SizedBox(width: 5),
                              DisciplinaComponents(
                                  horas: '08:15',
                                  titolo: 'TOP',
                                  titoloC: Colors.brown[100],
                                  horasC: Colors.pink),
                              SizedBox(width: 5),
                              DisciplinaComponents(
                                  horas: '08:15',
                                  titolo: 'TOP',
                                  titoloC: Colors.brown[100],
                                  horasC: Colors.pink),
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(
                            "MANHA",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              DisciplinaComponents(
                                  horas: '07:15',
                                  titolo: 'FPF',
                                  titoloC: Colors.brown[100],
                                  horasC: Colors.pink),
                              SizedBox(width: 5),
                              DisciplinaComponents(
                                  horas: '08:15',
                                  titolo: 'FPF',
                                  titoloC: Colors.brown[100],
                                  horasC: Colors.pink),
                              SizedBox(width: 5),
                              DisciplinaComponents(
                                  horas: '08:15',
                                  titolo: 'FPF',
                                  titoloC: Colors.brown[100],
                                  horasC: Colors.pink),
                              SizedBox(width: 5),
                              DisciplinaComponents(
                                  horas: '08:15',
                                  titolo: 'EDF',
                                  titoloC: Colors.brown[100],
                                  horasC: Colors.pink),
                              SizedBox(width: 5),
                              DisciplinaComponents(
                                  horas: '08:15',
                                  titolo: 'EDF',
                                  titoloC: Colors.brown[100],
                                  horasC: Colors.pink),
                              SizedBox(width: 5),
                              DisciplinaComponents(
                                  horas: '08:15',
                                  titolo: '',
                                  titoloC: Colors.brown[100],
                                  horasC: Colors.pink),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
