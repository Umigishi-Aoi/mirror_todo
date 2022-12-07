import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'data/todos.dart';
import 'model/todo_dto.dart';
import 'repository/todo_repository.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
TodoDatabase todoDatabase(TodoDatabaseRef ref) {
  return TodoDatabase();
}

@riverpod
TodoRepository todoRepository(TodoRepositoryRef ref) {
  return TodoRepository(database: ref.read(todoDatabaseProvider));
}

@riverpod
Future<List<TodoDto>> todoList(TodoListRef ref) {
  return ref.watch(todoRepositoryProvider).fetchEntries();
}
