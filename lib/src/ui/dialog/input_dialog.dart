import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/constants.dart';
import '../../providers.dart';

//Do not use BuildContexts across async gaps.のワーニング回避のため
//StatefulHookConsumerWidgetに変更
class InputDialog extends StatefulHookConsumerWidget {
  const InputDialog({super.key});

  @override
  InputDialogState createState() => InputDialogState();
}

class InputDialogState extends ConsumerState<InputDialog> {
  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return AlertDialog(
      title: const Text('Add Todo'),
      content: TextField(
        decoration: const InputDecoration(
          hintText: 'Enter todo',
        ),
        maxLength: kMaxLengthOfTodo,
        inputFormatters: [
          LengthLimitingTextInputFormatter(kMaxLengthOfTodo),
        ],
        controller: controller,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () async {
            await ref
                .read(todoRepositoryProvider)
                .addTodoByString(controller.text);
            if (!mounted) {
              return;
            }
            Navigator.of(context).pop();
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}
