import 'package:flutter/material.dart';
import 'package:sistema_escolar/components/mini_profile_componts.dart';
import 'package:sistema_escolar/res/colors/app_colors.dart';
import 'package:sistema_escolar/utils/rotas_util.dart';

class NotaPage extends StatefulWidget {
  @override
  _NotaPageState createState() => _NotaPageState();
}

class _NotaPageState extends State<NotaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.green,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            nevegarTela(context, 'dashboard');
          },
        ),
        title: Text('Notas'),
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
          SizedBox(
            height: 400,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: Column(
                      children: [
                        Text(
                          "FISICA",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Row(
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  width: 150,
                                  height: 20,
                                  color: Colors.brown[100],
                                  child: Text("Avaliação")),
                              SizedBox(width: 5),
                              Container(
                                  alignment: Alignment.center,
                                  width: 45,
                                  height: 20,
                                  color: Colors.brown[100],
                                  child: Text("Nota")),
                              SizedBox(width: 5),
                              Container(
                                  alignment: Alignment.center,
                                  width: 45,
                                  height: 20,
                                  color: Colors.brown[100],
                                  child: Text("Faltas")),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Row(
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  width: 150,
                                  height: 20,
                                  color: Colors.brown[50],
                                  child: Text("1º semestre")),
                              SizedBox(width: 5),
                              Container(
                                  alignment: Alignment.center,
                                  width: 45,
                                  height: 20,
                                  color: Colors.brown[50],
                                  child: Text("12")),
                              SizedBox(width: 5),
                              Container(
                                  alignment: Alignment.center,
                                  width: 45,
                                  height: 20,
                                  color: Colors.brown[50],
                                  child: Text("1")),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 150,
                                height: 20,
                                child: Text("Aprovado"),
                                color: Colors.brown[50],
                              ),
                              SizedBox(width: 5),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
