import "dart:math";
import "dart:core";

main(){
  // 1. Calcule a área de um círculo com um raio de 5. (Use a fórmula da área do círculo: πr²).
  int raio = 5;
  double area = pi * pow(raio, 2);

  print("area circulo raio 5: " + area.toString());

  // 2. Encontre as raízes de uma equação quadrática com a = 1, b = -3 e c = 2. (Use a fórmula do discriminante: x = [-b ± sqrt(b² - 4ac)] / 2a). Nota: pesquise sobre a biblioteca math na documentação oficial e descubra como importá-la.
  int a = 1;
  int b = -3;
  int c = 2;
  
  double x1 = (-b + sqrt(pow(b, 2) - (4*a*c))) / (2*a);
  double x2 = (-b - sqrt(pow(b, 2) - (4*a*c))) / (2*a);
  print("raiz: " + x1.toString() + " e " + x2.toString());

  //3. Calcule o volume de uma esfera com raio 4. (Use a fórmula do volume de uma esfera: 4/3πr³)
  raio = 4;
  area = 4 / 3 * pi * pow(raio, 3);
  print(area.toString());

  //4. Determine o valor final obtido pela seguinte expressão numérica: 2 + 3 * 4 - (2 * 3) + 2^3.
  num valor = 2 + 3 * 4 - (2*3) + pow(2, 3);
  print(valor.toString());
}