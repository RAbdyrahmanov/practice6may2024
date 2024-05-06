import 'dart:io';

void main() {
  task1();
  task2();
  task3();
}

void task1() {
  String correctPassword = "1qazXSW@";

  stdout.write(" Login: ");
  String username = stdin.readLineSync() ?? '';
  stdout.write("Password: ");
  String password = stdin.readLineSync() ?? '';

  while (password != correctPassword) {
    print("Invalid Login or Password");
    stdout.write("Login: ");
    username = stdin.readLineSync() ?? '';
    stdout.write("Password: ");
    password = stdin.readLineSync() ?? '';
  }
  print("Эркексин ! ");
}

void task2() {
  int count = 0;
  double sum = 0;

  while (true) {
    stdout.write('Vvedi chislo: ');
    String input = stdin.readLineSync() ?? '';
    double number = double.tryParse(input) ?? 0;

    if (number == 0) {
      break;
    } else {
      count++;
      sum += number;
    }
  }

  if (count > 0) {
    double srednee = sum / count;
    print('Kollichestvo: $count');
    print('Obshaya: $sum');
    print('Srednee: $srednee');
  } else {
    print('Vvedite tolko chisla');
  }
}

void task3() {
  stdout.write('Nachalo diapazona: ');
  int start = int.parse(stdin.readLineSync() ?? '');

  stdout.write('Kones diapazona: ');
  int end = int.parse(stdin.readLineSync() ?? '');

  int sum = 0;

  for (int i = start; i <= end; i++) {
    if (i % 2 != 0) {
      sum = sum + i;
    }
  }

  print('sumIsOdd: $sum');
}
