import 'package:flutter/material.dart';
import 'package:sistema_escolar/res/colors/app_colors.dart';

class MiniProfileComponts extends StatelessWidget {
  const MiniProfileComponts({
    Key ? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 8,
      decoration: BoxDecoration(
        color: AppColors.green,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            child: Text(
              "E",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("IMPFA2015547",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              const Text("Eleuterio Fulaho Notico",
                  style: TextStyle(color: Colors.white)),
              Text("Curso:PFA 2012", style: TextStyle(color: Colors.brown[50])),
            ],
          ),
          Icon(
            Icons.info,
            color: Colors.brown[50],
            size: 30,
          ),
        ],
      ),
    );
  }
}
