import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

String formatDateTime(DateTime dateTime, {String format = 'dd.MM.yyyy HH:mm'}) {
  return format
      .replaceAll('yyyy', dateTime.year.toString())
      .replaceAll('MM', dateTime.month.toString().padLeft(2, '0'))
      .replaceAll('dd', dateTime.day.toString().padLeft(2, '0'))
      .replaceAll('HH', dateTime.hour.toString().padLeft(2, '0'))
      .replaceAll('mm', dateTime.minute.toString().padLeft(2, '0'))
      .replaceAll('ss', dateTime.second.toString().padLeft(2, '0'));
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lesson8',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: SafeArea(top: false, child: Text('Лента новостей')),
        ),

        //appBar: AppBar(centerTitle: true, title: Text('Пример контекста', textAlign: TextAlign.center)),
        body: Stack(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                final int crossAxisCount = constraints.maxWidth > 600 ? 3 : 2;
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                  ),
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return Card(
                      //color: Colors.cyan,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 5,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                              //color: Colors.cyan, //конфликт с decoration.color
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                ), // Радиус скругления
                              ),
                              child: Image.network(
                                fit: BoxFit.contain,
                                'https://loremflickr.com/200/300',
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    color: Colors.grey[300],
                                    child: Icon(
                                      Icons.broken_image,
                                      size: 70,
                                      color: Colors.grey[500],
                                    ),
                                  );
                                },
                              ),
                              //child: Center(child: Text('Изобрадение $index',)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              'Заголовок новости $index',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5, bottom: 5),
                            child: Text(
                              'Сегодня ${formatDateTime(DateTime.now(), format: 'yyyy.MM.dd HH:mm')}',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            Positioned(
              right: 20,
              bottom: 20,
              child: SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('+'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        12.0,
                      ), // Радиус скругления
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
