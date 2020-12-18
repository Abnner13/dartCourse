import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  Map<String, String> data = Map();

  //Nao deixa repetir valor
  data.putIfAbsent('1', () => 'Joao');
  data.putIfAbsent('2', () => 'maria');
  data.putIfAbsent('3', () => 'Roberto');
  data.putIfAbsent('4', () => 'Julia');

  Directory dir = Directory.current;
  File file = File(dir.path + '/meu_Arquivo.txt');

  writeFile(file, json.encode(data).toString());
}

void writeFile(File file, String data) {
  RandomAccessFile raf = file.openSync(mode: FileMode.write);

  raf.writeString(data);
  raf.flush();
  raf.closeSync();
}
