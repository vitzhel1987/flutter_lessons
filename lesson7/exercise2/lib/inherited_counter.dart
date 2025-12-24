import 'package:flutter/material.dart';

class InheritedCounter extends InheritedWidget {
  InheritedCounter({
    required this.counter,
    required this.incCounter,
    required super.child,
    super.key,
  });

   int counter;
  //Попытка 3
  final VoidCallback incCounter;

  static InheritedCounter? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedCounter>();
  }

  static InheritedCounter of(BuildContext context) {
    final InheritedCounter? result = maybeOf(context);
    assert(result != null, 'No InheritedNumber found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(InheritedCounter oldWidget) =>
      counter != oldWidget.counter;
}