import 'package:flutter/material.dart';

class MyMenu extends StatelessWidget {
  final String title;
  final IconData icon;
  final MaterialColor warn;
  final Function navi;

  const MyMenu({Key key, this.title, this.icon, this.warn, this.navi})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
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
            children: [
              Icon(Icons.home),
              Text("home"),
            ],
          ),
        ),
      ),
    );
  }
}
