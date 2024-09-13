void main(){
    // const mais rapido que o final (otimização), restricoes 
    // final ele nao pode retribuir, nao é capaz de otoikmizar que em o const mas tem menos restrcioes
    // var pode variar pode retribuir, var é mais  amplo




    //1. se o valor for conhecido ja no momento da declaracao
    //2. se o valor fpr conhecido em tempo de compilacao
    //var, final e const (inferência de tipo (feito pelo compilador))
    //principio do menor privelgio
    // final a;
    // print(a);
    // print(runtimeType) //erro em tempo de compilação 
    //final admite em tempo de execução
    // final a = 2;
    // a = "abc";
    //Null null = new Null();
    //inferência de tipos(feita pelo computador)
    // //var m = [['abc', 'd']];
    // var a = Null;
    // print(a);
    // print(a.runtimeType);
    // var nome = 'João';
    // nome = 1;



}


// void main(){
//     int a = 3;
//     print(a.runtimeType);

//     dynamic b = 2;
//     print(b.runtimeType);
//     b = "abc";
//     print(b.runtimeType);

// }


//estatico, feito pelo computador
// double d = 2;
// d.correr();

// //dinamico, feito pelo ambiente de execucao
// e = 2;
// e = "abc";

//gradual, engloba tanto o estatico quanto o dinamico


// void main(){

//   // int a = 2;
//   // ++a;  
//   // print(a);  //a = 3
//   // a++; 
//   // print(a); // a = 4
//   // print(++a); // primeiro vai incrementar e depois printar 5
//   // print(a++); //primeiro vai printar 5 e depois incrementar 
//   // print(a); //6

//   // double a = 1.2;
//   // int b = a.round();
//   // b = a.floor();
//   // b = a.ceil();

//   //conversoes de string para int
//   // String idadeTextual = "25";
//   // int idade = int.parse(idadeTextual);
//   // print(idade);
//   // print(idade.runtimeType);

//   // String pesoTextual = "80.2";
//   // double peso = double.parse(pesoTextual);
//   // print(peso);
//   // print(peso.runtimeType);

//   // String alturaTextual = "1.8";
//   // num altura = num.parse(alturaTextual);
//   // print(altura);
//   // print(altura.runtimeType);
//   //multiplicacao de string
//   // String letra = 'x';
//   // print(letra * 10);
//   //concatenação
//   // String nome = "Pedro";
//   // int idade = 22;
//   // print("Me chamo " + nome);
//   // print("Tenho " + idade.toString() + " anos");
  
//   // //interpolação
//   // print('Me chamo $nome');
//   // print("No ano que vem vou ter ${idade + 1} anos");

//   // String nome = "João";
//   // print(nome);
//   // print(nome.runtimeType);
//   // String teste = r'Use \n para pular uma linha;';
//   // print(teste);


// }