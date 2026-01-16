import 'package:flutter/material.dart';
import 'contact.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    final contact = switch (arguments) {
      Contact() => arguments,
      _ => null,
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Информация о контакте')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            contact != null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('ФИО: ${contact.fio}'),
                      Text('Номер: ${contact.phoneNumber}'),
                      Text('Пол: ${contact.gender ? 'муж' : 'жен'}'),
                      Text('Возраст: ${contact.age.toString()}'),
                    ],
                  )
                : Text('Ошибка'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Вернуться назад'),
            ),
          ],
        ),
      ),
    );
  }
}
