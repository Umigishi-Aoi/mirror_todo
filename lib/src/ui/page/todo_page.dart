import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'todo_item.dart';

class TodoPage extends ConsumerWidget {
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
            onPressed: () {},
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          print('tap');
        },
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
