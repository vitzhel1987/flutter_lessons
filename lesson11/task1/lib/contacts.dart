import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> contacts = [
      'Желдак В.А.',
      'Барсуков Д.Н',
      'Бескровный А.B',
      'Гусаров В.Ю.',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Контакты')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: contacts.length,
                separatorBuilder: (context, index) =>
                    Divider(color: Colors.grey[300], height: 1),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsetsGeometry.only(left: 20, top: 10),
                    child: Text(
                      contacts[index],
                      style: TextStyle(fontSize: 18),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Вернуться назад'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
