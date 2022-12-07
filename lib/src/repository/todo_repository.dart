import '../data/todos.dart';
import '../model/todo_dto.dart';

class TodoRepository {
  const TodoRepository({required this.database});
  final TodoDatabase database;

  Future<void> init() async {
    await addTodoByTodoDto(TodoDto.initialData0());
    await addTodoByTodoDto(TodoDto.initialData1());
    await addTodoByTodoDto(TodoDto.initialData2());
  }

  Future<List<TodoDto>> fetchTodos() async {
    final todos = await database.fetchTodos();
    return todos.map((todo) => TodoDto(id: todo.id, todo: todo.todo)).toList();
  }

  Future<void> addTodoByTodoDto(TodoDto todoDto) {
    return database.addTodo(todoDto.todo);
  }

  Future<void> addTodoByString(String text) {
    return database.addTodo(text);
  }

  Future<void> deleteEntry(TodoDto todoDto) {
    return database.deleteTodo(todoDto.id);
  }
}
