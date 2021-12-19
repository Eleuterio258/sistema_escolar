import 'package:flutter/material.dart';

class ButtomAppBarComponents extends StatelessWidget {
  const ButtomAppBarComponents({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 72,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home, color: Colors.deepPurpleAccent),
                Text("Principal", style: TextStyle(fontSize: 12)),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.bookmark, color: Colors.deepPurpleAccent),
                Text("Evento", style: TextStyle(fontSize: 12)),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.timer, color: Colors.deepPurpleAccent),
                Text("Cadeiras", style: TextStyle(fontSize: 12))
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.notification_important,
                    color: Colors.deepPurpleAccent),
                Text(
                  "Notificações",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person, color: Colors.deepPurpleAccent),
                Text("Perfil", style: TextStyle(fontSize: 12)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
