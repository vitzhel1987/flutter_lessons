import 'package:logger/logger.dart';

// Создание логгера с настройками
var logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0, // количество вызовов методов в стеке
    errorMethodCount: 8,
    lineLength: 120,
    colors: true,
    printEmojis: true,
    printTime: true,
  ),
  output: ConsoleOutput(), // можно настроить вывод в файл
);