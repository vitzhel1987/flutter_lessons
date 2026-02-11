import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'state/counter_state.dart';
import 'state/history_item.dart';
import 'actions/counter_actions.dart';


class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Redux Counter with History'),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StoreConnector<CounterState, int>(
                converter: (store) => store.state.count,
                builder: (context, int counter) {
                  return Text(
                    'Значение счетчика: $counter',
                    style: const TextStyle(fontSize: 24),
                  );
                },
              ),

              const SizedBox(height: 8.0,),

              StoreConnector<CounterState, int>(
                converter: (store) => store.state.history.length,
                builder: (context, int historyCount) {
                  return Text(
                    'Количество записей в истории: $historyCount',
                    style: const TextStyle(fontSize: 24),
                  );
                },
              ),

              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(),
              ),

              Expanded(
                child: StoreConnector<CounterState, List<HistoryItem>>(
                  converter: (store) => store.state.history,
                  builder: (context, historyItems) {
                    return ListView.builder(
                      itemCount: historyItems.length,
                      itemBuilder: (context, index) {
                        final item = historyItems[index];

                        return ListTile(
                          title: item.when(
                            increment: (value) => Text("Increment $value"),
                            decrement: (value) => Text("Decrement $value"),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  StoreConnector<CounterState, VoidCallback>(
                    converter: (store) =>
                        () => store.dispatch(const CounterActions.increment()),
                    builder: (context, callback) {
                      return FloatingActionButton(
                        child: const Icon(Icons.add),
                        onPressed: () {
                          callback();
                        },
                      );
                    },
                  ),

                  const SizedBox(width: 16,),

                  StoreConnector<CounterState, VoidCallback>(
                    converter: (store) =>
                        () => store.dispatch(const CounterActions.decrement()),
                    builder: (context, callback) {
                      return FloatingActionButton(
                        child: const Icon(Icons.remove),
                        onPressed: () {
                          callback();
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
