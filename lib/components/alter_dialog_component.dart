import 'package:flutter/material.dart';

alert(BuildContext context, String msg) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("ok"),
          content: Text(msg),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("ok"),
            )
          ],
        );
      });
}
