import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../constants/constants.dart';
import '../../providers.dart';
import '../dialog/input_dialog.dart';
import 'todo_item.dart';

class TodoPage extends HookConsumerWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoListAsync = ref.watch(todoListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mirror Todo'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () async {
              final info = await PackageInfo.fromPlatform();
              showLicensePage(
                context: context,
                applicationName: info.appName,
                applicationVersion: info.version,
                applicationIcon: const Icon(Icons.tag_faces),
                applicationLegalese: kDisclaimer,
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.add_circle_outline),
            onPressed: () async {
              await _showInputDialog(context);
              return ref.refresh(todoListProvider);
            },
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () async {
          await _showInputDialog(context);
          return ref.refresh(todoListProvider);
        },
        child: todoListAsync.when(
          error: (e, st) => Text(e.toString()),
          loading: () => const Center(child: CircularProgressIndicator()),
          data: (todos) {
            return ListView.builder(
              itemCount: todos.length,
              itemBuilder: (BuildContext context, int index) {
                return TodoItem(
                  key: ValueKey(todos[index].id),
                  todoDto: todos[index],
                );
              },
            );
          },
        ),
      ),
    );
  }

  Future<void> _showInputDialog(BuildContext context) async {
    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const InputDialog();
      },
    );
  }
}
