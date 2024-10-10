import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailField(),
          passwordField(),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField() {
    //restringir o teclado para que ele seja apropriado para a digitação de email
    //exibir uma dica instruindo o usuadio a digitar o seu email
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'digite seu email',
      ),
    );
  }

  //metodo que reproduz um widget proprio para exibicao de campo de senha
  Widget passwordField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'digite sua senha',
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {
        // acao
      },
      child: Text('login'),
    );
  }
}
