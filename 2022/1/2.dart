import 'dart:io';

Future<void> main() async {
  final input = (await File('input.txt').readAsString()).split("\n");
  final elves = <int>[];

  var current = 0;
  for (final item in input) {
    if (item == '\u000D') {
      elves.add(current);
      current = 0;
      continue;
    }
    current += int.parse(item);
  }

  elves.sort();

  final top = elves.sublist(elves.length - 3);
  final answer = top.fold<int>(0, (c, e) => c + e);

  print(answer);
}
