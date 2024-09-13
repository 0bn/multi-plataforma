import 'dart:io';

void main(){
  print('Bem vindo ao nosso restaurante');
  print('Digite o horario da sua chegada (hh): ');
  String chegada =  stdin.readLineSync() ?? '';
  int h = int.parse(chegada);

  if (h < 8 || h > 20)
    print('Restaurante fechado');
  
  else if (h >= 14 && h <= 16)
    print('Hora do almoço');
  
  else  
    print('Restaurante aberto');
}