void main(){
  print('Hello world!');

  String nome = "João";
  print(nome);
  print(nome.runtimeType);
  String teste = r'Use \n para pular linha'; /* Texto raw */
  print(teste);

  String nome2 = "Pedro";
  int idade = 22;
  print("Me chamo " + nome2);
  print("Tenho " + idade.toString() + " anos");
  print("No ano que vem vou ter ${idade+1} anos");

  String letra = "x";
  print(letra * 10);

  String idadeTextual = "25";
  int idade2 = int.parse(idadeTextual);
  print(idade2);
  
  String pesoTextual = "80.2";
  double peso = double.parse(pesoTextual);
  print(peso);
  print(peso.runtimeType);

  String alturaTextual = "1.8";
  num altura = num.parse(alturaTextual);
  print(altura);
  print(altura.runtimeType);

  double a = 1.2;
  int b = a.round();
  print(b);
  b = a.floor();
  print(b);
  b = a.ceil();
  print(b);

  int c = 5 ~/ 2; //2
  print(c);

  a = 2;
  ++a;
  print(a);
  print(++a);
  print(a++);

  String BUCETA = "BUCETA";

  print("comi a sua mae a milkes");
  print(BUCETA);
}