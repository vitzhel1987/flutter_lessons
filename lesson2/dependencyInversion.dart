//Нарушен принцип инверсии зависимостей, так как FileConverter зависит от
// реализации DocxConverter и PdfConverter и никто из них не зависит от абстракции

abstract class Converter {
  void convert(String filePath);
}

class ConverterPdf extends Converter{
  void convert(String filePath) {
    print("Конвертация $filePath в PDF...");
  }
}

class ConverterDocx extends Converter {
  void convert(String filePath) {
    print("Конвертация $filePath в DOCX...");
  }
}

class ConverterFile {
  void convertFile(Converter converter, String filePath) {
    converter.convert(filePath);
  }
}

void main() {

  List<Converter> converters = [ConverterPdf(), ConverterDocx()];

  var converterFile = ConverterFile();

  for (var convert in converters){
    converterFile.convertFile(convert, "document.txt");
  }
}
