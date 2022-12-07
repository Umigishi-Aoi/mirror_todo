import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../constants/constants.dart';
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
              setState.value++;
            },
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () async {
          await _showInputDialog(context);
          setState.value++;
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
