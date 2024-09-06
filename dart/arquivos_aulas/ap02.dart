import 'dart:io';
enum DiaDaSemana{SEGUNDA, TERCA}

void main(List<String> args) {
  const nomes = ['Pedro', 'Maria', 'João'];
  //for each
  for(String nome in nomes){
    print(nome);
  }

  //switch
  print(DiaDaSemana.values);
  DiaDaSemana dia = DiaDaSemana.SEGUNDA;
  switch(dia){
    case DiaDaSemana.SEGUNDA:
      print('Não!');
    default:
      print('Sim!');
  }

  //input e output
  stdout.writeln("Digite seu nome: ");
  var nome = stdin.readLineSync(); //dart ap02.dart < nome.txt > saudacao.txt
  stdout.writeln("Oi, $nome");

  //sound null safety
 String? name = stdin.readLineSync();
 name?.toLowerCase();
}