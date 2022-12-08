import '../data/todos.dart';
import '../model/todo_dto.dart';
import '../util/util.dart';

class TodoRepository {
  const TodoRepository({required this.database});
  final TodoDatabase database;

  Future<void> init() async {
    await addTodoByTodoDto(TodoDto.initialTodo0());
    await addTodoByTodoDto(TodoDto.initialTodo1());
    await addTodoByTodoDto(TodoDto.initialData2());
  }

  Future<List<TodoDto>> fetchTodos() async {
    final todos = await database.fetchTodos();
    return todos
        .map(
          (todo) => TodoDto(
            id: todo.id,
            todo: stringToList(todo.todo).reversed.toList(),
          ),
        )
        .toList();
  }

  Future<void> addTodoByTodoDto(TodoDto todoDto) {
    return database.addTodo(todoDto.listToString);
  }

  Future<void> addTodoByString(String text) {
    return database.addTodo(text);
  }

  Future<void> deleteTodo(TodoDto todoDto) {
    return database.deleteTodo(todoDto.id);
  }
}
