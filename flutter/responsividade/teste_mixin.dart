//exibir a msg olá, meu mixin

mixin DizerOlaMixin{
  String dizerOla(){
    return "olá";
  }
}

mixin DizerNomeMixin{
  String dizerNome(){
    return "rodrigo";
  }
}

class DizerTudo with DizerOlaMixin, DizerNomeMixin{
  void dizerTudo(){
    print('${dizerOla()}, ${dizerNome()}');
  }
}

void main(List<String> args) {
  final teste = DizerTudo();
  teste.dizerTudo();
}