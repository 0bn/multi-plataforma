//import input e output, valoers aleatorios e enum com opcoes
import 'dart:io';
import 'dart:math';
enum Opcoes{PEDRA, PAPEL, TESOURA, SAIR}

void jogo() {
  //loop do/while do jogo que executa ate jogador sair

  //exibir menu
  print("BEM VINDO AO JOGO");
  print("OPÇÕES:\n1- PEDRA\n2- PAPEL\n3- TESOURA\n4-SAIR");
  print("-----------------------------------------------");
  //input do usuario e validar com do while valido de 1 a 4
  do{
    int sorte = Random().nextInt(3) + 1;
    stdout.writeln("ESCOLHA: ");
    int jogada = int.parse(stdin.readLineSync()!);
    print("JOGADOR ($jogada)  vs. ($sorte)COMPUTADOR");

    

  }while(true);
  
  //sortear jogo do computador
  //input de int pra enum do usuario e pc
  //exibir jogada JOGADOR(jogada) vs. (jogada)COMPUTADOR
  //verificar resultado
}
