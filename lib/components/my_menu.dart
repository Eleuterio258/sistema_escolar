import 'package:flutter/material.dart';

class MyMenu extends StatelessWidget {
  final String title;
  final IconData icon;
  final MaterialColor warn;
  final Function navi;

  const MyMenu({Key? key, required   this.title,required this.icon, required this.warn, required this.navi})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed('pagamento');
        },
        splashColor: Colors.green,
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(Icons.home),
              Text("home"),
            ],
          ),
        ),
      ),
    );
  }
}
