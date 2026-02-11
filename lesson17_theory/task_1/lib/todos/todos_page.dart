import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:task_1/todos/todos_store.dart';

class TodosPage extends StatefulWidget {
  const TodosPage({super.key});

  @override
  State<TodosPage> createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> {
  final _store = TodosStore();
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mobx To-Do List'), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      // decoration: const InputDecoration(
                      //   hintText: 'Добавьте новое задание в список дел',
                      // ),
                      decoration: InputDecoration(
                        label: Text('Добавьте новое задание в список дел'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {
                      _store.addTodo(_controller.text);
                      _controller.text = '';
                    },
                    child: Text('Добавить'),
                  ),
                ],
              ),
              //Observer(builder: (context) =>  Text('Общее количество дел: ${_store.todoCount}'))
              SizedBox(height: 16),
              Observer(
                builder: (context) {
                  return Center(
                    child: Text('Общее количество дел: ${_store.todoCount}'),
                  );
                },
              ),

              Observer(
                builder: (context) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: _store.todoCount,
                      itemBuilder: (context, index) {
                        final todo = _store.todos[index];

                        return ListTile(
                          //  title: Text(_store.todos[index]),
                          title: Text(todo),
                          trailing: IconButton(
                            onPressed: () {
                              _store.removeTodoAt(index);
                            },
                            icon: const Icon(Icons.delete),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
