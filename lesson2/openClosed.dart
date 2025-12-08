//Нарушен принцип открытости/закрытости, так как для добавления новой функционалности потребуется менять существующий код

abstract class Format{
  void convert(String filePath);
}

class Pdf extends Format{
  @override
  void convert(String filePath) {
    print('Конвертируем $filePath B PDF...');
  }
}

class Docx extends Format{
  @override
  void convert(String filePath) {
    print('Конвертируем $filePath B DOCX...');
  }
}

class Jpg extends Format{
  @override
  void convert(String filePath) {
    print('Конвертируем $filePath B JPG...');
  }
}

class FileConverter{
  void convert(String filePath, Format format){
    format.convert(filePath);
  }
}

void main() {
  final FileConverter converter = FileConverter();

  String filePath = 'document.txt';
  final Pdf pdf = Pdf();
  final Docx docx = Docx();
  final Jpg jpg = Jpg();
  /*
    converter.convert(filePath, pdf);
    converter.convert(filePath, docx);
    converter.convert(filePath, jpg);
    */

  List<Format> formats = [pdf, docx, jpg];

  for(Format format in formats){
    converter.convert(filePath, format);
  }
}