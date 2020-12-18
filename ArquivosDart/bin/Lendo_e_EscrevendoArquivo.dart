import 'dart:io';

void main(List<String> args) {
  // 89 2 32
  Directory dir = Directory.current;
  print('Path atual: ${dir.path}');

  File file = File(dir.path + '/meu_Arquivo.txt');

  writeFile(file);
  readFile(file);
}

void readFile(File file) {
  if (!file.existsSync()) {
    print('Arquivo nao encontrado');
    return;
  }

  print('################ Iniciar Leitura ################');
  print(file.readAsLinesSync());
  print('################ Lendo bytes ################');
  List values = file.readAsBytesSync();
  values.forEach((value) => print(value));
}

void writeFile(File file) {
  RandomAccessFile raf = file.openSync(mode: FileMode.write);
  raf.writeStringSync('Olá mundo \r\n como vc esta hoje?');
  raf.flushSync();
  raf.closeSync();
}
