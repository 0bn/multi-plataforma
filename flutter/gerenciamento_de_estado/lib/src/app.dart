import 'package:flutter/material.dart';
import 'package:gerenciamento_de_estado/src/telas/login_tela.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login',
        home: Scaffold(
          body: LoginTela(),
        ));
  }
}
