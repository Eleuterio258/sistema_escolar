import 'package:flutter/material.dart';

diasSemana({dia, ano}) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(Icons.timer),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              dia,
              style: const TextStyle(
                fontSize: 17,
              ),
            ),
            Text(
              ano,
              style: const TextStyle(
                fontSize: 17,
              ),
            ),
          ],
        )
      ]);
}
