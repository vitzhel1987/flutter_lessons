import 'package:flutter/material.dart';
import 'inherited_counter.dart';


class Child1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Text(
        'Child1: counter: ${InheritedCounter.of(context).counter}'
    );
  }
}

//Попытка 3
class Child2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: InheritedCounter.of(context).incCounter,
        child: Text(
            'Child2: incCounter'
        )
    );
  }
}

//Попытка 1
/*
class Child2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        InheritedCounter.of(context).counter++;
        print(InheritedCounter.of(context).counter);
      },
      child: Text(
          'Counter++'
      )
    );
  }
}
*/

//Попытка 2
/*
class Child2 extends StatefulWidget {
  const Child2({super.key});

  @override
  State<Child2> createState() => Child2State();
}

class Child2State extends State<Child2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                InheritedCounter.of(context).counter++;
                print(InheritedCounter.of(context).counter);
              });
            },
            child: Text(
              'Counter++'
            )
          ),
          Text(
            'Counter in Child2: ${InheritedCounter.of(context).counter}'
          ),
          Child1()
        ],
      )
    );
  }
}
*/