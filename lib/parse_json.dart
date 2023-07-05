import 'dart:io';
import 'dart:convert';
import 'package:parse_json/convert.dart';
import 'package:path/path.dart' as path;

void main() {
  List<String> names = [];
  final folderPath =
      'C:\\Users\\simay\\OneDrive\\Masaüstü\\ \\Flutter\\project\\voscreen'; // Klasör yolunu buraya girin

  Directory folder = Directory(folderPath);
  if (!folder.existsSync()) {
    print('Klasör bulunamadı.');
    return;
  }

  List<File> jsonFiles = folder
      .listSync()
      .whereType<File>()
      .where((file) => path.extension(file.path) == '.txt')
      .toList();

  if (jsonFiles.isEmpty) {
    print('Klasörde JSON dosyası bulunamadı.');
    return;
  }

  for (var jsonFile in jsonFiles) {
    print('Dosya adı: ${jsonFile.path}');
    try {
      String jsonString = jsonFile.readAsStringSync();
      Map<String, dynamic> jsonData = jsonDecode(jsonString);
      var obje = ConvertJson.fromJson(jsonData);
      var name = obje.question!.video!.metadata!.name!;
      // JSON verilerine buradan erişebilirsiniz.
      // Örneğin, "name" özelliğine ulaşmak için:
      // var name = jsonData['question']['video']['metadata']['name'];
      print('Name: $name');
      if (!names.contains(name)) {
        names.add(name);
      }

      // İstenilen spesifik veriye göre işlemler yapabilirsiniz.
    } catch (e) {
      print('JSON dosyasını işlerken bir hata oluştu: $e');
    }
  }
  String outputPath =
      'C:\\Users\\simay\\OneDrive\\Masaüstü\\ \\Flutter\\project\\namesList.txt';
  File file = File(outputPath);
  IOSink sink = file.openWrite();
  for (String name in names) {
    sink.write(name + '\n');
  }
  sink.close();

  //ConvertJson(folderPath);
}
