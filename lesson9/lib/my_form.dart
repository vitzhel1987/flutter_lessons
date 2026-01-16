import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  // Ключ для управления состоянием формы
  final _formKey = GlobalKey<FormState>();

  bool _isSecuringPassword = true;
  bool _isLoading = false;

  // Контроллеры для полей ввода
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    // Очищаем контроллеры при удалении виджета
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _showHidePassword() {
    setState(() {
      _isSecuringPassword = !_isSecuringPassword;
    });
  }

  void _recoverPassword() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.black,
        padding: EdgeInsetsGeometry.only(top: 20, left: 20, bottom: 40),
        content: Text(
          'Функция востановления пароля',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  void _submitForm() async {
    setState(() {
      _isLoading = true;
    });

    // Проверяем валидность формы
    final isValid = _formKey.currentState!.validate();

    await Future.delayed(Duration(seconds: 2));

    if (isValid) {
      // Если форма валидна, обрабатываем данные
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.green,
          padding: EdgeInsetsGeometry.only(top: 20, left: 20, bottom: 40),
          content: Text('Вход выполнен успешно'),
        ),
      );
    }

    setState(() {
      _isLoading = false;
    });
  }

  void _createNewAccount() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green,
        padding: EdgeInsetsGeometry.only(top: 20, left: 20, bottom: 40),
        content: Text('Переход к регистрации'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    debugPrint('Логотип нажат!');
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.lock, color: Colors.blue, size: 35),
                  ),
                ),
                const Text(
                  'Вход в систему',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40),
                // Поле для email
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.mail),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        _emailController.clear();
                      },
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Пожалуйста, введите email';
                    }
                    if (!value.contains('@')) {
                      return 'Введите корректный email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                // Поле для пароля
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Пароль',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: _isSecuringPassword
                          ? Icon(Icons.remove_red_eye)
                          : Icon(Icons.visibility_off),
                      onPressed: _showHidePassword,
                    ),
                  ),
                  obscureText: _isSecuringPassword,
                  obscuringCharacter: '*',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Пожалуйста, введите пароль';
                    }
                    if (value.length < 6) {
                      return 'Пароль должен содержать минимум 6 символов';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: AlignmentGeometry.centerRight,
                  child: InkWell(
                    onTap: _recoverPassword,
                    child: Padding(
                      padding: EdgeInsetsGeometry.symmetric(
                        vertical: 5,
                        horizontal: 5,
                      ),
                      child: const Text(
                        'Забыли пароль?',
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 10, color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: _submitForm,
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: _isLoading
                      ? CircularProgressIndicator(color: Colors.white)
                      : const Text('Войти'),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                    const Text(
                      ' или ',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                  ],
                ),
                const SizedBox(height: 30),
                TextButton(
                  onPressed: _createNewAccount,
                  child: Text(
                    'Создать новый аккаунт',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
