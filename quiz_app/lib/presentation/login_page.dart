import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/generated/l10n.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';

import '../app/navigation/routers/routes/login_route.dart';

class LoginPage extends StatefulWidget {
  final LoginRoute route;

  const LoginPage({required this.route, super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginRoute get route => widget.route;

  AppProvider get appProvider => AppProvider.of(context);

  bool _isLoading = false;

  final _formKey = GlobalKey<FormState>();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  Future<void> _signInWithEmailAndPassword() async {
    try {
      final validateState = _formKey.currentState?.validate() ?? false;

      if (validateState) {
        final email = _emailTextController.value.text;
        final password = _passwordTextController.value.text;

        final authService = appProvider.authService;

        setState(() {
          _isLoading = true;
        });

        await authService.signInWithEmailAndPassword(email, password);
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
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint(AppProvider.of(context).authService.currentUser?.displayName);

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).authorization_title),
        centerTitle: true,
      ),

      body: SafeArea(
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
                    S.of(context).enter_text,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),

                Text(S.of(context).enter_text_line_1),

                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextFormField(
                    controller: _emailTextController,
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
                    controller: _passwordTextController,
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
                                onPressed: _signInWithEmailAndPassword,
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Text(S.of(context).login_button),
                              ),
                            ),
                            Padding(padding: const EdgeInsets.only(top: 16)),
                            SizedBox(
                              width: width,
                              child: OutlinedButton(
                                onPressed: () {
                                  context.push(route.registerRoute.routeAbsolutePath);
                                  // context.pushNamed(
                                  //   route.registerRoute.routeName,
                                  // );
                                },
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
          ),
        ),
      ),
    );
  }
}
