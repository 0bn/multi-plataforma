import 'dart:math';
import 'dart:io';

void main() {
  var random = Random();
  var numero = random.nextInt(100); // Gera um número aleatório entre 0 e 100
  bool achou = false;

  print(numero);
  print("Jogo de adivinhas: qual o numero de 0 a 99?");

  while (achou != true){
    print("Digite o numero");
     int? n = int.parse(stdin.readLineSync()!);
     if(n > numero){
      print("Chute maior que o numero");
     }
     if(n < numero){
      print("Chute menor que numero");
     }
     if(n == numero){
      print("Você acertou");
      achou = true;
     }
  }
}




