import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicação responsiva',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Text('começando...'),
    );
  }
}

class MeuLayoutResponsivo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Responsividade')),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return constraints.maxWidth <= 578
                ? Text('pequena')
                : Text('grande');
          },
        ));
  }
}
