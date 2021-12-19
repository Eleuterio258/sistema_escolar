import 'package:flutter/material.dart';

disciplinaWidget(context) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SizedBox(width: 2),
                Text(
                  "MATEMÁTICA II -",
                  style: TextStyle(color: Colors.red),
                ),
                SizedBox(width: 15),
                Text("II SEMESTRE -"),
                SizedBox(width: 15),
                Text("2017"),
                SizedBox(width: 15),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              const   SizedBox(width: 2),
              const   Text("TURMA: A"),
              const   SizedBox(width: 15),
              const   Text("PFA"),
              const   SizedBox(width: 15),
              const   Text("CODIGO:MAT II"),
                const SizedBox(width: 15),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green[100],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight:Radius.circular(5),
                      topLeft:Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.refresh),
                    onPressed: () {},
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 15),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                //SizedBox(width: 2),
                Text("TEMA:"),
                SizedBox(width: 15),
                Text("PROGRECAO GEOMÉTRICA"),
                SizedBox(width: 15),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SizedBox(width: 2),
                Text("NIVEL:II"),
                SizedBox(width: 25),
                SizedBox(width: 20),
                Text("DOCENTE:MANUEL MACANDA"),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
