import 'package:flutter/material.dart';
import 'package:frases/components/cardclass.dart';
import 'repository/frases.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Frases Incriveís",
          style: TextStyle(color: Colors.red),
        ),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Column(
        children: frases
            .map((frase) => CardClass(
                frases: frase,
                deletar: () {
                  setState(() {
                    frases.remove(frase);
                  });
                }))
            .toList(),
      ),
    );
  }
}
