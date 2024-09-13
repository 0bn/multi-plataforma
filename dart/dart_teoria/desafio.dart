import 'dart:io';
import 'dart:math';

void main(){
    var random = Random();
    var aleatorio = random.nextInt(100) + 1;

    
    while (true) {
      
     print('Escreva um número aleatório entre 1 e 100: ');
     String? usuario = stdin.readLineSync();

      if (usuario != null){
        int escolha = int.parse(usuario);
        if (aleatorio > escolha){
          print('O número é maior que $usuario');
        }
        else if(aleatorio < escolha){
          print('O número é menor que $usuario');
        }
        else{
          print('Acertou!');
          break;
        }
      }
    }
}