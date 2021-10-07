import 'dart:io';

class Calculator {}

int addition(int firstnum, int secondnum) {
  return firstnum + secondnum;
}

int subtraction(int firstnum, int secondnum) {
  return firstnum - secondnum;
}

int multiplication(int firstnum, int secondnum) {
  return firstnum * secondnum;
}

double division(int firstnum, int secondnum) {
  return firstnum / secondnum;
}

void main() {
  Calculator calc = Calculator();
  print("please enter the first operand");
  int firstnum = int.parse(stdin.readLineSync()!);
  print("please enter the operator");
  String operator = stdin.readLineSync()!;
  print("please enter the second operator");
  int secondnum = int.parse(stdin.readLineSync()!);

  switch (operator) {
    case "+":
      print("${firstnum} + ${secondnum} = ${(addition(firstnum, secondnum))}");

      break;
    case "-":
      print(
          "${firstnum} - ${secondnum} = ${(subtraction(firstnum, secondnum))}");
      break;
    case "*":
      print(
          "${firstnum} * ${secondnum} = ${(multiplication(firstnum, secondnum))}");
      break;
    case "/":
      if (secondnum == 0) {
        return;
      }
      print("${firstnum} / ${secondnum} = ${(division(firstnum, secondnum))}");
      break;
    default:
      print("input invalid");
      break;
  }
}
