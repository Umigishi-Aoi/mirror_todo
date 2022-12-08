import '../constants/constants.dart';
import '../data/todos.dart';
import '../model/todo_dto.dart';

class TodoRepository {
  const TodoRepository({required this.database});
  final TodoDatabase database;

  Future<List<TodoDto>> fetchTodos() async {
    final todos = await database.fetchTodos();
    return todos
        .map(
          (todo) => TodoDto(
            id: todo.id,
            todo: todo.todo.split('').reversed.toList(),
          ),
        )
        .toList();
  }

  Future<void> addTodoByString(String text) {
    return database.addTodo(text);
  }

  Future<void> deleteTodo(int id) {
    return database.deleteTodo(id);
  }
}
