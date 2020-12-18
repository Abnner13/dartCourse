import 'dart:io';

void main() {
  String path = '/home/invent/';
  Directory dir = Directory(path);

  if (dir.existsSync())
    print('O diretorio existe');
  else
    print('O diretorio nao existe');

  print('\n\n ####################### \n\n');
  //Criar e remover diretorio temporrio

  dir = Directory.systemTemp.createTempSync();
  if (dir.existsSync()) {
    print('removendo ${dir.path}');
    dir.deleteSync();
  } else {
    print('Nao foi encontrado o diretorio');
  }
}
