import 'package:drift/drift.dart';

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

  Future<List<Todo>> fetchEntries() {
    return (select(todos)).get();
  }

  Future<int> addTodo(String todo) {
    return into(todos).insert(TodosCompanion(todo: Value(todo)));
  }

  Future<void> deleteTodo(int id) {
    return (delete(todos)..where((tbl) => tbl.id.equals(id))).go();
  }
}
