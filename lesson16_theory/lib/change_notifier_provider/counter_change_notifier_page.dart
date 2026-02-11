import 'package:flutter/material.dart';
import 'package:lesson16_theory/change_notifier_provider/counter_model.dart';
import 'package:provider/provider.dart';

class CounterChangeNotifierPage extends StatefulWidget {
  const CounterChangeNotifierPage({super.key});

  @override
  State<CounterChangeNotifierPage> createState() => _CounterChangeNotifierPageState();
}

class _CounterChangeNotifierPageState extends State<CounterChangeNotifierPage> {

  late final CounterModel notifier;

  @override
  void initState() {
    super.initState();
    notifier = context.read<CounterModel>();
    notifier.addListener(_onChanged);
  }

  void _onChanged() {
    if(notifier.count == 0) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Данные обнулились")));
    }
  }

  @override
  void dispose() {
    notifier.removeListener(_onChanged);
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CounterChangeNotifierPage"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Consumer<CounterModel>(
                builder: (context, model, _) {

                  return Text(model.count.toString());
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.read<CounterModel>().increment();
                      },
                      child: const Text("Прибавить"),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {
                        context.read<CounterModel>().decrement();
                      },
                      child: const Text("Отнять"),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {
                        context.read<CounterModel>().reset();
                      },
                      child: const Text("Сбросить"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class CounterChangeNotifierPage extends StatelessWidget {
//   const CounterChangeNotifierPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('CounterChangeNotifierPage'),
//         centerTitle: true,
//       ),
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Consumer<CounterModel>(
//                 builder: (context, model, _) {
//                   return Text(model.count.toString());
//                 },
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 16),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         context.read<CounterModel>().increment();
//                       },
//                       child: const Text("Прибавить"),
//                     ),
//                     const SizedBox(height: 8),
//                     ElevatedButton(
//                       onPressed: () {
//                         context.read<CounterModel>().decrement();
//                       },
//                       child: const Text("Отнять"),
//                     ),
//                     const SizedBox(height: 8),
//                     ElevatedButton(
//                       onPressed: () {
//                         context.read<CounterModel>().reset();
//                       },
//                       child: const Text("Сбросить"),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }