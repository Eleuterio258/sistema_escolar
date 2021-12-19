import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sistema_escolar/components/disciplina_widget.dart';
import 'package:http/http.dart' as http;
import 'package:sistema_escolar/res/colors/app_colors.dart';
import 'package:sistema_escolar/shared/model/user_model.dart';
import 'package:sistema_escolar/utils/rotas_util.dart';

class FaltaPage extends StatefulWidget {
  const FaltaPage({Key? key}) : super(key: key);

  @override
  _FaltaPageState createState() => _FaltaPageState();
}

class _FaltaPageState extends State<FaltaPage> {
 late bool status = false;
  final url = "http://192.168.137.1/siga_api/allUser";
  final List<User> _users = <User>[];
  Future<List<User>> usersTotal() async {
    var result = await http.get(Uri.parse(url));
    var pagamento = <User>[];

    if (result.statusCode == 200) {
      var jsonD = json.decode(result.body);
      for (var jsonOut in jsonD) {
      pagamento.add(User.fromJson(jsonOut));
      }
    }
    return pagamento;
  }

  @override
  void initState() {
    super.initState();
    usersTotal().then((value) {
      setState(() {
        _users.addAll(value);
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.green,
          title: const Text('Faltas'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              nevegarTela(context, 'dashboard');
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              disciplinaWidget(context),
              SizedBox(
                height: 400,
          
                  child: FutureBuilder(
                      future: usersTotal(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                            itemCount: _users.length,
                            itemBuilder: (_, i) {
                              return Column(
                                children: [
                                  ListTile(
                                 //     title: Text("${_users[i].name}"),
                                      trailing: Switch(
                                        value: false,
                                        onChanged: (bool val) {
                                          setState(() {
                                            status = val;
                                          });
                                        },
                                      ))
                                ],
                              );
                            },
                          );
                        } else {
                          return const Center(child: Text("carregando Dados"));
                        }
                      }),
                ),
              
            ],
          ),
        ));
  }
}
