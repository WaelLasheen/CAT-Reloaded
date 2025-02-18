import 'dart:io';

void main() {
  List<String> phrase = stdin.readLineSync()!.split(' ');
  print(phrase.reversed.join(' '));
}