# todo_app

To do app project.

## Secrets and environment (before run)

The app uses Firebase and loads config from environment variables. **Do not commit real secrets to the repo.**

1. **Copy env template and fill in your values:**
   ```bash
   cp .env.example .env
   ```
   Edit `.env` and set Firebase keys (from [Firebase Console](https://console.firebase.google.com/) or run `flutterfire configure`).

2. **Android:** copy Firebase config:
   ```bash
   cp android/app/google-services.example.json android/app/google-services.json
   ```
   Replace placeholders with your project values, or get the file from Firebase Console.

3. **iOS:** copy Firebase config:
   ```bash
   cp ios/Runner/GoogleService-Info.example.plist ios/Runner/GoogleService-Info.plist
   ```
   Replace placeholders, or run `flutterfire configure` to generate it.

Alternatively, install [FlutterFire CLI](https://firebase.google.com/docs/flutter/setup) and run `flutterfire configure` to generate Firebase config files and then fill `.env` from the generated `lib/firebase_options.dart` (or keep using .env for consistency).

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
