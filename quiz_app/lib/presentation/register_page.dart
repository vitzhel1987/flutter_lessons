import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/generated/l10n.dart';

import 'providers/app_provider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  AppProvider get appProvider => AppProvider.of(context);
  bool _isLoading = false;
  final _formKey = GlobalKey<FormState>();
  final _emailTextControler = TextEditingController();
  final _passwordTextControler = TextEditingController();

  Future<void> _registerInWithEmailAndPassword() async {
    try {
      final validateState = _formKey.currentState?.validate() ?? false;

      if (validateState) {
        final email = _emailTextControler.value.text;
        final password = _passwordTextControler.value.text;

        final authService = appProvider.authService;

        setState(() {
          _isLoading = true;
        });

        await authService.registerWithEmailAndPassword(email, password);
      }
    } on FirebaseAuthException catch (e) {
      appProvider.snackBarDispatcher(e.message ?? '');
    } catch (e) {
      appProvider.snackBarDispatcher(e.toString());
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    _emailTextControler.dispose();
    _passwordTextControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).register_title),
        centerTitle: true,
      ),

      body: SafeArea(
        // child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Center(
                  child: Text(
                    S.of(context).register_title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),

                Text(
                  S.of(context).register_text_line_1,
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextFormField(
                    controller: _emailTextControler,
                    enabled: !_isLoading,
                    decoration: InputDecoration(
                      label: Text(S.of(context).email_field),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return S.of(context).bad_email_message_1;
                      }

                      bool emailValid = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                      ).hasMatch(value);

                      if (!emailValid) {
                        return S.of(context).bad_email_message_2;
                      }

                      return null;
                    },
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextFormField(
                    enabled: !_isLoading,
                    controller: _passwordTextControler,
                    decoration: InputDecoration(
                      label: Text(S.of(context).password_field),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return S.of(context).bad_password_message_1;
                      } else if (value.length < 6) {
                        return S.of(context).bad_password_message_2;
                      }
                      return null;
                    },
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 16),

                switch (_isLoading) {
                  true => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Center(child: CircularProgressIndicator()),
                  ),

                  false => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: LayoutBuilder(
                      builder: (context, constrains) {
                        final width = constrains.maxWidth;
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: width,
                              child: OutlinedButton(
                                onPressed: _registerInWithEmailAndPassword,
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Text(S.of(context).registr_button),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                },
              ],
            ),
            // ),
          ),
        ),
      ),
    );
  }
}

//S.of(context).register_title
