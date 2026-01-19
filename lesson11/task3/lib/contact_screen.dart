import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'contact.dart';

class ContactScreen extends StatelessWidget {
  final Contact? contact;

  const ContactScreen(this.contact, {super.key});

  @override
  Widget build(BuildContext context) {
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
                      Text('ФИО: ${contact!.fio}'),
                      Text('Номер: ${contact!.phoneNumber}'),
                      Text('Пол: ${contact!.gender ? 'муж' : 'жен'}'),
                      Text('Возраст: ${contact!.age.toString()}'),
                    ],
                  )
                : const Text('Ошибка'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.pop();
                //context.go('/');
              },
              child: const Text('Вернуться назад'),
            ),
          ],
        ),
      ),
    );
  }
}
