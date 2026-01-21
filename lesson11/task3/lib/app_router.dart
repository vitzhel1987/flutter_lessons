import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'contacts_screen.dart';
import 'contact_screen.dart';
import 'contact.dart';


/// The route configuration.
final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const ContactsScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'contact',
          builder: (BuildContext context, GoRouterState state) {
            final contact = state.extra as Contact?;
            return ContactScreen(contact);
          },
        ),
      ],
    ),
  ],
);