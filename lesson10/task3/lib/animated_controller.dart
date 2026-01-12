import 'package:flutter/material.dart';

class OpacityFigure extends StatefulWidget {
  const OpacityFigure({super.key, required this.title});

  final String title;

  @override
  OpacityFigureState createState() => OpacityFigureState();
}

class OpacityFigureState extends State<OpacityFigure>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 5000), // Длительность одного цикла
      vsync: this,
    );

    _opacityAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    //_controller.repeat(reverse: true); // Зацикливаем с реверсом
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return FadeTransition(opacity: _opacityAnimation, child: child);
              },
              child: Container(width: 200, height: 200, color: Colors.blue),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _controller.forward();
                });
              },
              child: Text('Запуск анимации'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _controller.stop();
                });
              },
              child: Text('Остановить анимацию'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  return _controller.reset();
                });
              },
              child: Text('Сбросить анимацию'),
            ),
          ],
        ),
      ),
    );
  }
}
