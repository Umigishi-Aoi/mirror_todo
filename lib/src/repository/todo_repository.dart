import '../data/todos.dart';
import '../model/todo_dto.dart';

class TodoRepository {
  const TodoRepository({required this.database});
  final TodoDatabase database;

  Future<void> init() async {
    await addEntry(TodoDto.initialData0());
    await addEntry(TodoDto.initialData1());
    await addEntry(TodoDto.initialData2());
  }

  Future<List<TodoDto>> fetchEntries() async {
    final todos = await database.fetchEntries();
    return todos.map((todo) => TodoDto(id: todo.id, todo: todo.todo)).toList();
  }

  Future<void> addEntry(TodoDto todoDto) {
    return database.addTodo(todoDto.todo);
  }

  Future<void> deleteEntry(TodoDto todoDto) {
    return database.deleteTodo(todoDto.id);
  }
}
