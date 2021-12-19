import 'package:flutter/material.dart';
import 'package:sistema_escolar/components/mini_profile_componts.dart';
import 'package:sistema_escolar/res/colors/app_colors.dart';
import 'package:sistema_escolar/utils/rotas_util.dart';

class NotaPage extends StatefulWidget {
  const NotaPage({Key? key}) : super(key: key);

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
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            nevegarTela(context, 'dashboard');
          },
        ),
        title: const Text('Notas'),
        actions: const [
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
          const MiniProfileComponts(),
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
                        const Text(
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
                                  child: const Text("Avaliação")),
                              const SizedBox(width: 5),
                              Container(
                                  alignment: Alignment.center,
                                  width: 45,
                                  height: 20,
                                  color: Colors.brown[100],
                                  child: const Text("Nota")),
                              const SizedBox(width: 5),
                              Container(
                                  alignment: Alignment.center,
                                  width: 45,
                                  height: 20,
                                  color: Colors.brown[100],
                                  child: const Text("Faltas")),
                              const SizedBox(width: 5),
                              Container(
                                  alignment: Alignment.center,
                                  width: 45,
                                  height: 20,
                                  color: Colors.brown[100],
                                  child: const Text("Mais")),
                            ],
                          ),
                        ),
                        const SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Row(
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  width: 150,
                                  height: 20,
                                  color: Colors.brown[50],
                                  child:const Text("1º semestre")),
                              const SizedBox(width: 5),
                              Container(
                                  alignment: Alignment.center,
                                  width: 45,
                                  height: 20,
                                  color: Colors.brown[50],
                                  child:const Text("12")),
                              const SizedBox(width: 5),
                              Container(
                                  alignment: Alignment.center,
                                  width: 45,
                                  height: 20,
                                  color: Colors.brown[50],
                                  child:const Text("1")),
                              Container(
                                alignment: Alignment.center,
                                width: 45,
                                height: 20,
                                child: const Icon(
                                  Icons.visibility,
                                  color: Colors.green,
                                ),
                              ),
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
                                  color: Colors.brown[50],
                                  child:const Text("2º semestre")),
                              const SizedBox(width: 5),
                              Container(
                                  alignment: Alignment.center,
                                  width: 45,
                                  height: 20,
                                  color: Colors.brown[50],
                                  child:const Text("12")),
                              const SizedBox(width: 5),
                              Container(
                                  alignment: Alignment.center,
                                  width: 45,
                                  height: 20,
                                  color: Colors.brown[50],
                                  child: const Text("5")),
                              Container(
                                alignment: Alignment.center,
                                width: 45,
                                height: 20,
                                child: const Icon(
                                  Icons.visibility,
                                  color: Colors.green,
                                ),
                              ),
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
                                  color: Colors.brown[50],
                                  child: const Text("----------")),
                              const SizedBox(width: 5),
                              Container(
                                  alignment: Alignment.center,
                                  width: 45,
                                  height: 20,
                                  color: Colors.brown[50],
                                  child: const Text("--")),
                              const SizedBox(width: 5),
                              Container(
                                  alignment: Alignment.center,
                                  width: 45,
                                  height: 20,
                                  color: Colors.brown[50],
                                  child: const Text("--")),
                              Container(
                                  alignment: Alignment.center,
                                  width: 45,
                                  height: 20,
                                  child: const Text("--")),
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
                                color: Colors.brown[50],
                              ),
                              const SizedBox(width: 5),
                              Container(
                                alignment: Alignment.center,
                                width: 95,
                                height: 20,
                                child: const Text("Total de Faltas"),
                                color: Colors.brown[50],
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 50,
                                height: 20,
                                child:const   Text("6"),
                                color: Colors.brown[50],
                              ),
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
                                child: const  Text("Aprovado"),
                                color: Colors.brown[50],
                              ),
                              const SizedBox(width: 5),
                              Container(
                                alignment: Alignment.center,
                                width: 50,
                                height: 20,
                                child: const  Text("Media"),
                                color: Colors.brown[50],
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 95,
                                height: 20,
                                child: const Text("12"),
                                color: Colors.brown[50],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
