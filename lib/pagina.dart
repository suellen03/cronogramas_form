import 'package:cronogramas_form/main.dart';
import 'package:flutter/material.dart';

class Pagina extends StatefulWidget {
  const Pagina({super.key});

  @override
  State<Pagina> createState() => _PaginaState();
}

class _PaginaState extends State<Pagina> {
  final List<String> _lista = <String>[
    'Aula 03/07/2023',
    'Aula 04/07/2023',
    'Aula 05/07/2023',
    'Aula 06/07/2023',
    'Aula 07/07/2023'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Lista de Aulas',
          style: TextStyle(color: Color.fromARGB(255, 45, 45, 45)),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: _lista.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  color: Colors.orange,
                  child: Center(child: Text(' ${_lista[index]}')),
                );
              }),
        ),
      ),
    );
  }
}
