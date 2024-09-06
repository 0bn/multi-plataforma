import 'package:mega_sena/mega_sena.dart' as mega_sena;
import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  //type anotation
  final jogoUsuario = <int> [], jogoComputador = <int> [];
  int numero;
  do{
    print("digite um numero");
    numero = int.parse(stdin.readLineSync()!);
    if(numero >= 1 && numero <= 60){
      if(!jogoUsuario.contains(numero)) jogoUsuario.add(numero);
    }
  }while(numero < 1 || numero > 60 || jogoUsuario.length < 6);

  final gerador = Random();
  while(jogoComputador.length < 6){
    int numeroComputador = gerador.nextInt(60) + 1;
    if(!jogoComputador.contains(numeroComputador)) jogoComputador.add(numeroComputador);
  }

  jogoUsuario.sort();
  jogoComputador.sort();
  print("jogador ($jogoUsuario)  vs. ($jogoComputador)computador");

  for(final n in jogoUsuario){
    stdout.write(jogoComputador.contains(n) ? "$n " : "");
  }
}
