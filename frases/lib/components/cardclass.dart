import 'package:flutter/material.dart';
import 'package:frases/Model/frasesmodel.dart';

class CardClass extends StatelessWidget {
  final Frases? frases;
  final void Function()? deletar;
  const CardClass({this.frases, this.deletar});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '${frases?.frase}',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            Text('${frases?.autor}',
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.green,
                )),
            SizedBox(
              height: 10,
            ),
            IconButton(onPressed: deletar, icon: Icon(
              Icons.delete
            ))
          ],
        ),
      ),
    );
  }
}
