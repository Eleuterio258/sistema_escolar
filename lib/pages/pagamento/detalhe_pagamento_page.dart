import 'package:flutter/material.dart';
import 'package:sistema_escolar/components/mini_profile_componts.dart';
import 'package:sistema_escolar/res/colors/app_colors.dart';

class DetalhePagamentoPage extends StatefulWidget {
  const DetalhePagamentoPage({Key? key}) : super(key: key);

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
        title:  const Text("Pagamento"),
        // leading: Icon(Icons.arrow_back),
        actions: [
          IconButton(
            icon: const Icon(Icons.message),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          const MiniProfileComponts(),
          const SizedBox(
            height: 15,
          ),
          Card(
            shadowColor: AppColors.green,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(Icons.accessible),
                  const SizedBox(
                    width: 35,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       const Text("Valor:3.700,00 Mts"),
                       const Text("Parcela:10 - Abril de 2018"),
                      Row(
                        children: [
                           const Text("Situacao: "),
                          Text(
                            "Paga",
                            style: TextStyle(color: AppColors.green),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                           const Text("Multa:"),
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
            child: SizedBox(
              width: MediaQuery.of(context).size.height,
              child: ElevatedButton(
               // color: AppColors.green,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text(
                        "Confirmação",
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                           Text("Tens certeza da operação?"),
                        ],
                      ),
                      actions: [
                        TextButton(
                          child:  const Text("Pagar"),
                          onPressed: () {},
                        ),
                        TextButton(
                          child:  const Text("Cancelar"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  );
                },
                child: const Text(
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
