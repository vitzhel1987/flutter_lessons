import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/data/network_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: context.read<NetworkService>().fetchUsers(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            }

            final users = snapshot.data ?? List.empty();

            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];

                return ListTile(
                  title: Text(user.name ?? 'No Name'),
                  subtitle: Text(user.email ?? 'No Email'),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
