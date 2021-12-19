import 'package:flutter/material.dart';

class DisciplinaComponents extends StatelessWidget {
  final titolo;
  final horas;
  final Color horasC;
  final Color titoloC;
  DisciplinaComponents(
      {Key key, this.titolo, this.horas, this.horasC, this.titoloC})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: 45,
          height: 30,
          child: Text(
            this.titolo,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          decoration: BoxDecoration(
            color: this.titoloC,
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            this.horas,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          width: 45,
          height: 20,
          decoration: BoxDecoration(
              color: this.horasC,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
              )),
        )
      ],
    );
  }
}
