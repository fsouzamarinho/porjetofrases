import 'package:flutter/material.dart';


Widget mostraFrase(frases) {
  return Card(
    margin: const EdgeInsets.all(10),
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            frases.frase,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
          Text(frases.autor,
              style: const TextStyle(
                fontSize: 10,
                color: Colors.green,
              ))
        ],
      ),
    ),
  );
}
