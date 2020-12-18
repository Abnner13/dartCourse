class Person {
  String name;
  String cpf;

  void cameIn() {
    print('Entrada: ${_dateTime()}');
  }

  void cameOut() {
    print('Saida: ${_dateTime()}');
  }

  String _dateTime() {
    DateTime today = DateTime.now();
    String dateSlug =
        '${today.day.toString().padLeft(2, '0')}/${today.month.toString().padLeft(2, '0')}/${today.year.toString()} ';
    dateSlug +=
        '${today.hour.toString().padLeft(2, '0')}:${today.minute.toString().padLeft(2, '0')}:${today.second.toString().padLeft(2, '0')}';

    return dateSlug;
  }
}

class Client extends Person {
  String address;
}

class Employee extends Person {
  String mom;
  String phone;
  int _registrationsCode;

  int get registrationsCode => _registrationsCode;

  @override //nao necessario
  void cameIn() {
    super.cameIn(); //reuso do metodo
    print('Empregado Entrou');
  }

  @override //nao necessario
  void cameOut() {
    // super.cameIn(); sem reuso
    print('Empregado Saiu');
  }
}
