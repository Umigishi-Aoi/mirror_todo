import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/constants.dart';
import '../../model/todo_dto.dart';
import '../../providers.dart';

class TodoItem extends HookConsumerWidget {
  const TodoItem({super.key, required this.todoDto});

  final TodoDto todoDto;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isChecked = useState(false);
    return GestureDetector(
      onTap: () async {
        isChecked.value = !isChecked.value;
        await _deleteTodo(ref);
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
                  onChanged: (bool? value) async {
                    isChecked.value = value!;
                    await _deleteTodo(ref);
                  },
                ),
                const SizedBox(
                  width: kTodoSpacing,
                ),
                Row(
                  children: todoDto.todo
                      .map(
                        (todoString) => Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: kTodoStringSpacing,
                          ),
                          child: Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.rotationY(kRotationRadians),
                            child: Text(todoString),
                          ),
                        ),
                      )
                      .toList(),
                ),
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

  Future<void> _deleteTodo(
    WidgetRef ref,
  ) async {
    await Future<void>.delayed(
      const Duration(milliseconds: kDurationForDelete),
    );
    await ref.read(todoRepositoryProvider).deleteTodo(todoDto.id);
    return ref.refresh(todoListProvider);
  }
}
