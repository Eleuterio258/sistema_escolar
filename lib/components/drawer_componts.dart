import 'package:flutter/material.dart';

drawerComponts() {
  return Drawer(
    child: ListView(
      children: const [
        UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
              child: Text(
            "E",
            style: TextStyle(fontSize: 65),
          )),
          accountName: Text("Eleuterio"),
          accountEmail: Text("Eleuterio3d@gmail.com"),
        ),
        ListTile(title: Text("Principal"), leading: Icon(Icons.home)),
        ListTile(title: Text("Pagamntos"), leading: Icon(Icons.payment)),
        ListTile(title: Text("Configurações"), leading: Icon(Icons.settings)),
        ListTile(title: Text("Sobre"), leading: Icon(Icons.help)),
        ListTile(title: Text("Sair"), leading: Icon(Icons.vpn_key)),
      ],
    ),
  );
}
