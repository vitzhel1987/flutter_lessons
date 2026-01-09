import 'package:flutter/material.dart';

class AnimatedSquare extends StatefulWidget {
  const AnimatedSquare({super.key, required this.title});

  final String title;

  @override
  AnimatedSquareState createState() => AnimatedSquareState();
}


class AnimatedSquareState extends State<AnimatedSquare> {
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
          child: AnimatedContainer(
            decoration: BoxDecoration(
              color: _isExpanded ? Colors.green : Colors.orange,
              borderRadius: BorderRadius.circular(_isExpanded ? 20.0 : 10.0),
            ),
            duration: const Duration(milliseconds: 2000),
            curve: Curves.easeInOut,
            width: _isExpanded ? 200.0 : 300.0,
            height: _isExpanded ? 100.0 : 150.0,
            alignment: Alignment.center,
            child: const Text(
              'Нажми меня!',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}