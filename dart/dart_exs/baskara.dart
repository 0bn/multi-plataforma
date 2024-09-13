import 'dart:math';

void main(){
  int a = 1;
  int b = -3;
  int c = 2;
  double x_1 = (-(b) + sqrt(pow(b,2) - 4*a*c))/2*a; //2
  double x_2 = (-(b) - sqrt(pow(b,2) - 4*a*c))/2*a; //1
  print(x_1);
  print(x_2);

}