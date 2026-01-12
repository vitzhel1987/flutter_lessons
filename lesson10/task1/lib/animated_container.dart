import 'package:flutter/material.dart';

class AnimatedContainerSquare extends StatefulWidget {
  const AnimatedContainerSquare({super.key, required this.title});

  final String title;

  @override
  AnimatedContainerSquareState createState() => AnimatedContainerSquareState();
}

class AnimatedContainerSquareState extends State<AnimatedContainerSquare> {
  bool _isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Stack(
            alignment: AlignmentGeometry.center,
            children: [
              AnimatedContainer(
                color: Colors.blue,
                duration: const Duration(milliseconds: 2000),
                curve: Curves.easeInOut,
                width: _isExpanded ? 200.0 : 0.0,
                height: _isExpanded ? 200.0 : 0.0,
              ),
              AnimatedContainer(
                color: Colors.red,
                duration: const Duration(milliseconds: 2000),
                curve: Curves.easeInOut,
                width: _isExpanded ? 0.0 : 150.0,
                height: _isExpanded ? 0.0 : 150.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
