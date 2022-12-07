import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../dialog/input_dialog.dart';
import 'todo_item.dart';

class TodoPage extends HookConsumerWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //temp
    final todos = [
      'study flutter',
      'exercise',
      'eat',
      'study flutter',
      'exercise',
      'eat',
    ];

    //InputDialogを閉じた際にTodoPageをリビルドするためのState
    final setState = useState(0);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mirror Todo'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.add_circle_outline),
            onPressed: () async {
              await showDialog<void>(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return const InputDialog();
                },
              );
              setState.value++;
            },
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {},
        child: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (BuildContext context, int index) {
            return TodoItem(todo: todos[index]);
          },
        ),
      ),
    );
  }
}
