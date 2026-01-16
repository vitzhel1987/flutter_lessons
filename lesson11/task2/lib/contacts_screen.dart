import 'package:flutter/material.dart';
import 'contact.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Contact> contacts = [
      Contact('Желдак В.А.', 38, true, '+375295300001'),
      Contact('Желдак Е.И.', 35, true, '+375295300002'),
      Contact('Барсуков Д.Н.', 42, true, '+375295300003'),
      Contact('Гусаров В.Ю.', 47, true, '+375295300004'),
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
                  return ListTile(
                    leading: CircleAvatar(child: Text('${index + 1}')),
                    title: Text(contacts[index].fio),
                    subtitle: Text('Телефон ${contacts[index].phoneNumber}'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.pushNamed(context, '/contact', arguments: contacts[index]);
                    },
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
