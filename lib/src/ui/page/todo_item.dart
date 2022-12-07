import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/constants.dart';

class TodoItem extends HookConsumerWidget {
  const TodoItem({super.key, required this.todo});

  final String todo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isChecked = useState(false);
    return GestureDetector(
      onTap: () {
        isChecked.value = !isChecked.value;
      },
      behavior: HitTestBehavior.translucent,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(kTodoItemPadding),
            child: Row(
              children: [
                Checkbox(
                  value: isChecked.value,
                  onChanged: (bool? value) {
                    isChecked.value = value!;
                  },
                ),
                const SizedBox(
                  width: kTodoSpacing,
                ),
                Text(todo),
                const Spacer()
              ],
            ),
          ),
          const Divider(
            thickness: kDividerThickness,
            indent: kDividerIndent,
            height: kDividerThickness,
          ),
        ],
      ),
    );
  }
}
