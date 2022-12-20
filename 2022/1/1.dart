import 'dart:io';

Future<void> main() async {
  final input = (await File('input.txt').readAsString()).split("\n");

  var biggest = 0;
  var current = 0;
  for (final item in input) {
    // Unicode new line character (code point 13)
    if (item == '\u000D') {
      if (current > biggest) {
        biggest = current;
      }
      current = 0;
      continue;
    }
    current += int.parse(item);
  }

  print(biggest);
}
