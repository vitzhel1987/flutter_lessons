import 'package:flutter/material.dart';

class AnimatedSwitcherSquare extends StatefulWidget {
  const AnimatedSwitcherSquare({super.key, required this.title});

  final String title;

  @override
  AnimatedSwitcherSquareState createState() => AnimatedSwitcherSquareState();
}

class AnimatedSwitcherSquareState extends State<AnimatedSwitcherSquare> {
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
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 3000),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(scale: animation, child: child);
            },
            switchInCurve: Curves.easeInOut,
            child: _isExpanded
                ? Container(
                    key: const ValueKey(1),
                    width: 200,
                    height: 200,
                    color: Colors.blue,
                  )
                : Container(
                    key: const ValueKey(2),
                    width: 150,
                    height: 150,
                    color: Colors.red,
                  ),
          ),
        ),
      ),
    );
  }
}

/*
[
AnimatedContainer(
color: Colors.blue,
duration: const Duration(milliseconds: 2000),
curve: Curves.easeInOut,
width: _isExpanded ? 200.0 : 0.0,
height: _isExpanded ? 200.0 : 0.0,
alignment: Alignment.center,
),
AnimatedContainer(
color: Colors.red,
duration: const Duration(milliseconds: 2000),
curve: Curves.easeInOut,
width: _isExpanded ? 0.0 : 150.0,
height: _isExpanded ? 0.0 : 150.0,
alignment: Alignment.center,
)
]
*/
