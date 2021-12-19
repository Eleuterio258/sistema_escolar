import 'package:flutter/material.dart';
import 'package:sistema_escolar/components/mini_profile_componts.dart';
import 'package:sistema_escolar/res/colors/app_colors.dart';

class DetalhePagamentoPage extends StatefulWidget {
  @override
  _DetalhePagamentoPageState createState() => _DetalhePagamentoPageState();
}

class _DetalhePagamentoPageState extends State<DetalhePagamentoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.green,
        centerTitle: true,
        title: Text("Pagamento"),
        // leading: Icon(Icons.arrow_back),
        actions: [
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          MiniProfileComponts(),
          SizedBox(
            height: 15,
          ),
          Card(
            shadowColor: AppColors.green,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.accessible),
                  SizedBox(
                    width: 35,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Valor:3.700,00 Mts"),
                      Text("Parcela:10 - Abril de 2018"),
                      Row(
                        children: [
                          Text("Situacao: "),
                          Text(
                            "Paga",
                            style: TextStyle(color: AppColors.green),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Multa:"),
                          Text(
                            "00,00 Mts",
                            style: TextStyle(color: AppColors.green),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.height,
              child: RaisedButton(
                color: AppColors.green,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(
                        "Confirmação",
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Tens certeza da operação?"),
                        ],
                      ),
                      actions: [
                        FlatButton(
                          child: Text("Pagar"),
                          onPressed: () {},
                        ),
                        FlatButton(
                          child: Text("Cancelar"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  "Pagar",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
