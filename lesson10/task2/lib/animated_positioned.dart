import 'package:flutter/material.dart';

class AnimatedPositionedCircle extends StatefulWidget {
  const AnimatedPositionedCircle({super.key, required this.title});

  final String title;

  @override
  AnimatedPositionedCircleState createState() =>
      AnimatedPositionedCircleState();
}

class AnimatedPositionedCircleState extends State<AnimatedPositionedCircle> {
  bool _isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            _isExpanded = !_isExpanded;
          });
        },
        child: LayoutBuilder(
          builder: (context, constraints) {
            final stackWidth = constraints.maxWidth;
            final stackHeight = constraints.maxHeight;
            final diameter = 100.0;

            return Stack(
              children: [
                Container(color: Colors.yellow[100]),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 2000),
                  curve: Curves.easeInOut,
                  left: _isExpanded ? 0.0 : stackWidth - diameter,
                  top: _isExpanded ? 0.0 : stackHeight - diameter,
                  child: Container(
                    width: diameter,
                    height: diameter,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(diameter / 2),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
