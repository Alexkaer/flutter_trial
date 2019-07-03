import 'dart:io';

Future<String> readFile(String name) {
  final file = File(name);
  return file.readAsString();
}

readOk() async {
  String text = await readFile(
      "/Users/xushuang/work/flutter_trial/flutter_trial/lib/aaa.txt");
  print(text);
}

void main() {
  readFile("/Users/xushuang/work/flutter_trial/flutter_trial/lib/aaa.txt")
      .then((result) {
    print(result);
  });
//  readOk();
  print('start read file');
}
