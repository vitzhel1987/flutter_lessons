//Нарушен принцип подстановки Барбары Лисков, так как до переработки класс EncryptedFile не был способен заменить базовый класс

abstract class FileProcessor {
  void upload(String filePath);
}

abstract class Converter extends FileProcessor {
  void convert(String filePath);
}

class PdfConverter extends Converter {
  @override
  void upload(String filePath) {
    print("Загружаем PDF-файл: $filePath");
  }

  @override  
  void convert(String filePath) {
    print("Конвертируем $filePath в PDF...");
  }
}

class EncryptedFile extends FileProcessor {
  @override
  void upload(String filePath) {
    print("Загружаем зашифрованный файл: $filePath");
  }
}

void main() {
  final pdfConverter = PdfConverter ();
  final encryptedFile = EncryptedFile ();

  List<FileProcessor> files = [
    pdfConverter,
    encryptedFile,
  ];

  for (var file in files) {
    file.upload("document.txt");
  }

  pdfConverter.convert("document.txt");
}