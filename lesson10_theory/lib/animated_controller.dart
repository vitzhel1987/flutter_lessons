import 'package:flutter/material.dart';

class RotatingScalingStar extends StatefulWidget {
  const RotatingScalingStar({super.key, required this.title});

  final String title;

  @override
  RotatingScalingStarState createState() => RotatingScalingStarState();
}


class RotatingScalingStarState extends State<RotatingScalingStar>
    with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500), // Длительность одного цикла
      vsync: this,
    );

    // Анимация вращения (от 0 до 2π радиан = 0° до 360°)
    _rotationAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    // Анимация масштаба (от 1 до 2 размера)
    _scaleAnimation = Tween<double>(begin: 1, end: 2).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    //_controller.repeat(reverse: true); // Зацикливаем с реверсом
  }

  @override
  void dispose() {
    _controller.dispose(); // Очищаем контроллер
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
              animation: _controller, // Слушаем изменения контроллера
              builder: (context, child) {
                return RotationTransition(
                  turns: _rotationAnimation,
                  child: ScaleTransition(
                    scale: _scaleAnimation,
                    child: child,
                  ),
                );
              },
              child: Icon(Icons.star, color: Colors.yellow, size: 50,),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      _controller.forward();
                    });
                  },
                  child: Text('Запустить'),
                ),
                SizedBox(width: 20,),
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      _controller.reset();
                    });
                  },
                  child: Text('Сбросить'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}