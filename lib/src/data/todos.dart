import 'package:drift/drift.dart';

import '../constants/constants.dart';
import 'connection/connection.dart' as impl;

part 'todos.g.dart';

class Todos extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get todo => text()();
}

@DriftDatabase(tables: [Todos])
class TodoDatabase extends _$TodoDatabase {
  TodoDatabase() : super.connect(impl.connect());

  @override
  int get schemaVersion => 1;

  Future<List<Todo>> fetchTodos() {
    return (select(todos)).get();
  }

  Future<int> addTodo(String todo) {
    return into(todos).insert(TodosCompanion(todo: Value(todo)));
  }

  Future<void> deleteTodo(int id) {
    return (delete(todos)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<void> init() async {
    await addTodo(kInitialTodo0);
    await addTodo(kInitialTodo1);
    await addTodo(kInitialTodo2);
  }
}
