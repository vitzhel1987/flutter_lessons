import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/generated/l10n.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).profile_title),
        centerTitle: true,
      ),
      body: SafeArea(
        child: StreamBuilder(
          stream: AppProvider.of(context).authService.userStream,
          builder: (context, snapshot) {
            final user = snapshot.data;
            User? user2;
            if (user == null) return const SizedBox.shrink();

            final uuid = user.uid;
            final email = user.email ?? '';
            final emailVerified = user.emailVerified;

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).your_id(uuid),
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      S.of(context).your_email(email),
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      S.of(context).is_email_verified(switch (emailVerified) {
                        true => S.of(context).yes,
                        false => S.of(context).no,
                      }),
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
