import 'package:flutter/material.dart';

class DisciplinaComponents extends StatelessWidget {
  final String titolo;
  final String horas;
  final Color horasC;
  final Color titoloC;

  const DisciplinaComponents({Key? key, required this.titolo, required this.horas, required this.horasC, required this.titoloC}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: 45,
          height: 30,
          child: Text(
            titolo,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          decoration: BoxDecoration(
            color: titoloC,
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            horas,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          width: 45,
          height: 20,
          decoration: BoxDecoration(
              color: horasC,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
              )),
        )
      ],
    );
  }
}
