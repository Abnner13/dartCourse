class Person {
  String name;
  String nameMom;
  String nameFather;
}

class Animal {
  String scrath() => 'sdkfsndçkfnsd';
  String patas;
}

class Lobisomen extends Person with Animal {
  double height = 1.92;
}

void main() {
  var lobisomen = Lobisomen();
  lobisomen.name = 'Abnner';
  lobisomen.nameFather = 'ANtonio';
  lobisomen.nameMom = 'Arlene';
  lobisomen.patas = 'Large';

  lobisomen.scrath();
}
