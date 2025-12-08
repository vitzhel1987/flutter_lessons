//Нарушен принцип разделения интерфейсов, так как в изначальном коде оба класса реализуют все методы, даже если они им не подходят.
//Разделяем интерфейсы. Каждый интерфейс делает своё

abstract class Openable {
  void open(String filePath);
}

abstract class TextReadable {
  void readText();
}

abstract class AudioPlayable {
  void playAudio();
}

class TextFileHandler implements Openable, TextReadable {
  String content = "Пример текста";

  @override
  void open(String filePath) {
    print("Открываем текстовый файл: $filePath");
  }

  @override
  void readText() {
    print("Читаем текст: $content");
  }
}

class AudioFileHandler implements Openable, AudioPlayable {
  @override
  void open(String filePath) {
    print("Открываем аудиофайл: $filePath");
  }

  @override
  void playAudio() {
    print("Воспроизводим аудио...");
  }
}

void main() {
  var textFile = TextFileHandler();
  textFile.open("file.txt");
  textFile.readText();

  var audioFile = AudioFileHandler();
  audioFile.open("audio.mp3");
  audioFile.playAudio();
}