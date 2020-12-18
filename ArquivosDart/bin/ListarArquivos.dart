import 'dart:io';
void main(List<String> args) {
  Directory dir = Directory.current;
  print('Path atual: ${dir.path}');

  List<FileSystemEntity> list = dir.listSync(recursive: true);

  print('itens na lista: ${list.length} \n\n');

  list.forEach((FileSystemEntity value) {
    FileStat stat = value.statSync();

    print('Path: ${value.path}');
    print('Tipo: ${stat.type}');
    print('Alterado: ${stat.changed}');
    print('Modificado: ${stat.modified}');
    print('Tamanho: ${stat.size}');
    print('Permissao: ${stat.mode}');
  });
}
