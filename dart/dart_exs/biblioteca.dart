import 'dart:io';

void main(){

String escolha = stdin.readLineSync() ?? '';
int livro = int.parse(escolha);

switch(livro){
  case 1:
    print('Disponivel, pode ser emprestado por 14 dias.');
  case 2:
    print('Um dos mais procurados, pode ser emprestado por apenas 7 dias.');
  case 3:
    print('Indisponivel');
}
}